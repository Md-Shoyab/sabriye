import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import 'package:sabriye/main.dart';

class SetReminderController extends GetxController {
  final RxList<TimeOfDay?>? reminderTiming =
      SessionManager.getReminderTimeList();
  final RxList<bool>? reminderOnOffStatus =
      SessionManager.getReminderStatusList();

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
