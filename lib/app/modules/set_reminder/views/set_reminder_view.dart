import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../../model/remider_model.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/font_names.dart';
import '../controllers/set_reminder_controller.dart';

class SetReminderView extends GetView<SetReminderController> {
  const SetReminderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppConstants.setReminder,
          style: TextStyle(
            fontFamily: FontName.sourceSansPro,
            color: AppColors.brownColor,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                children: [
                  const VerticalGap(gap: 20),
                  SizedBox(
                    height: Get.height * .35,
                    child: AnalogClock(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2.0, color: AppColors.primaryColor),
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      width: Get.width * .7,
                      isLive: true,
                      hourHandColor: AppColors.primaryColor,
                      minuteHandColor: AppColors.primaryColor,
                      showSecondHand: false,
                      numberColor: AppColors.primaryColor,
                      showNumbers: true,
                      showAllNumbers: false,
                      textScaleFactor: 1.4,
                      showTicks: true,
                      tickColor: AppColors.primaryColor,
                      showDigitalClock: false,
                      datetime: DateTime.now(),
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  const Text(
                    AppConstants.reachYourGoalsBySettingReminder,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const VerticalGap(),
                  const Text(
                    AppConstants.dailyReminder,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const VerticalGap(gap: 20),
                  ValueListenableBuilder<Box<ReminderModel>>(
                    valueListenable: controller.remindersBox.listenable(),
                    builder: (context, box, _) {
                      final reminders =
                          box.values.toList().cast<ReminderModel>();
                      return reminders.isNotEmpty
                          ? ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: reminders.length,
                              itemBuilder: (context, index) => Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 10,
                                ),
                                margin: const EdgeInsets.only(
                                  bottom: 15,
                                  left: 15,
                                  right: 15,
                                ),
                                width: Get.width * .9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 0.8,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      TimeOfDay(
                                        hour: reminders[index].pickedTimeHour,
                                        minute:
                                            reminders[index].pickedTimeMinute,
                                      ).format(context).toString(),
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Switch.adaptive(
                                      activeColor: AppColors.primaryColor,
                                      value: reminders[index].isReminderEnable,
                                      onChanged: (status) =>
                                          controller.updateReminder(
                                        status,
                                        reminders[index],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : const SizedBox();
                    },
                  ),
                  const VerticalGap(gap: 20),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.bgColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryColor,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: controller.createReminder,
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.primaryColor,
                        size: 35,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
      ),
    );
  }
}
