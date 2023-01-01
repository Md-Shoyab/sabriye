import 'package:get/get.dart';
import 'package:sabriye/main.dart';
import 'package:flutter/material.dart';
import '../../../../model/remider_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class SetReminderController extends GetxController {
  late Box<ReminderModel> remindersBox;
  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    remindersBox = await Hive.openBox<ReminderModel>('reminders');
    isLoading.value = false;
    super.onInit();
  }

  @override
  void onClose() {
    Hive.close();
    super.onClose();
  }

  Future<void> createReminder() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      remindersBox.add(
        ReminderModel(
          pickedTimeHour: pickedTime.hour,
          pickedTimeMinute: pickedTime.minute,
          isReminderEnable: true,
          createdTimeMilliseconds: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
  }

  void updateReminder(bool status, ReminderModel reminder) {
    reminder.isReminderEnable = status;
    reminder.save();
  }

  /// Will delete the reminder on calling.
  void deleteReminder(ReminderModel reminder) {
    reminder.delete();
  }

  void showNotification() async {
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

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
    debugPrint('coming in show notification before');
    await notificationsPlugin.show(0, 'Demo Notification',
        'This is Demo Notification', notificationDetails);

    debugPrint('coming in show notification after');
  }
}
