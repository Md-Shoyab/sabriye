import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetReminderController extends GetxController {
  var selectedReminderTime = const TimeOfDay(hour: 8, minute: 25).obs;
  @override
  void onClose() {}
}
