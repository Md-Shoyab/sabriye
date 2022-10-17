import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetReminderController extends GetxController {
  var selectedReminderTime = const TimeOfDay(hour: 8, minute: 25).obs;
  final RxBool reminderStatus = true.obs;
  final RxList reminderTiming = [].obs;
  final RxList reminderOnOffStatus = [].obs;

  @override
  void onClose() {}
}
