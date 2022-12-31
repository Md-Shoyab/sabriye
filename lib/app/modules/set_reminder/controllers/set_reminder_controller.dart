import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/local_storage/sessions.dart';

class SetReminderController extends GetxController {
  late RxList<TimeOfDay?>? reminderTiming;
  late RxList<bool>? reminderOnOffStatus;

  @override
  void onInit() {
    reminderTiming = SessionManager.getReminderTimeList();
    reminderOnOffStatus = SessionManager.getReminderStatusList();
    super.onInit();
  }
}
