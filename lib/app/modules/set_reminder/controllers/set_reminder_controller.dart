import 'package:get/get.dart';
import 'package:sabriye/main.dart';
import 'package:flutter/material.dart';
import 'package:timezone/timezone.dart';
import '../../../../model/remider_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class SetReminderController extends GetxController {
  late Box<ReminderModel> remindersBox;
  RxBool isLoading = false.obs;

  @override
  Future<void> onInit() async {
    isLoading.value = true;
    remindersBox = await Hive.openBox<ReminderModel>('reminders');
    isLoading.value = false;
    super.onInit();
  }

  @override
  Future<void> onClose() async {
    await Hive.close();
    super.onClose();
  }

  Future<void> createReminder() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      final now = DateTime.now();

      await remindersBox.add(
        ReminderModel(
          pickedTimeHour: pickedTime.hour,
          pickedTimeMinute: pickedTime.minute,
          isReminderEnable: true,
          createdTimeMilliseconds: now.millisecondsSinceEpoch,
        ),
      );

      final notificationDateTime = _getResultingDateTimeFromHourAndMinute(
          pickedTime.hour, pickedTime.minute, now);

      await _createScheduledNotification(
        now.millisecondsSinceEpoch,
        notificationDateTime,
      );
    }
  }

  Future<void> updateReminder(bool status, ReminderModel reminder) async {
    reminder.isReminderEnable = status;
    await reminder.save();

    if (status) {
      final notificationDateTime = _getResultingDateTimeFromHourAndMinute(
        reminder.pickedTimeHour,
        reminder.pickedTimeMinute,
        DateTime.now(),
      );

      await _createScheduledNotification(
        reminder.createdTimeMilliseconds,
        notificationDateTime,
      );
    } else {
      await _cancelNotification(reminder.createdTimeMilliseconds);
    }
  }

  /// Will delete the reminder on calling.
  Future<void> deleteReminder(ReminderModel reminder) async {
    await reminder.delete();
    await _cancelNotification(reminder.createdTimeMilliseconds);
  }

  Future<void> _createScheduledNotification(
    int notificationId,
    DateTime notificationTime,
  ) async {
    AndroidNotificationDetails androidDetails =
        const AndroidNotificationDetails(
      'Notification - demo',
      'This is Notification demo',
      priority: Priority.max,
      importance: Importance.max,
    );

    DarwinNotificationDetails iosDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    await notificationsPlugin.zonedSchedule(
      // notificationId,
      2,
      'Demo Notification',
      'This is Demo Notification',
      TZDateTime.from(notificationTime, local),
      NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.wallClockTime,
    );
  }

  Future<void> _cancelNotification(notificationId) async {
    await notificationsPlugin.cancel(notificationId);
  }

  DateTime _getResultingDateTimeFromHourAndMinute(
    int hour,
    int minute,
    DateTime compareDate,
  ) {
    final hourString = hour.toString().length == 2 ? hour.toString() : '0$hour';
    final minuteString =
        minute.toString().length == 2 ? minute.toString() : '0$minute';

    final dateString = compareDate.toIso8601String().split('T').first;

    DateTime resultingDateTime = DateTime.parse(
      '$dateString $hourString:$minuteString:00',
    );

    return resultingDateTime.isAfter(compareDate)
        ? resultingDateTime
        : resultingDateTime.add(
            const Duration(seconds: 86400),
          );
  }
}
