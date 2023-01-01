import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/font_names.dart';
import '../controllers/set_reminder_controller.dart';

class SetReminderView extends GetView<SetReminderController> {
  const SetReminderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryBrown,
        onPressed: controller.showNotification,
        child: const Icon(
          Icons.notification_add,
          color: AppColor.white,
        ),
      ),
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
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Obx(
        () => ListView(
          children: [
            SizedBox(
              height: Get.height * .08,
            ),
            SizedBox(
              height: Get.height * .35,
              child: AnalogClock(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: AppColors.primaryColor),
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: controller.reminderTiming != null
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.reminderTiming!.length,
                      itemBuilder: ((context, index) => Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            margin: const EdgeInsets.only(bottom: 10),
                            height: 80,
                            width: Get.width * .9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 0.8,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.reminderTiming![index]!
                                      .format(context)
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Obx(
                                  () => Switch.adaptive(
                                    activeColor: AppColors.primaryColor,
                                    value:
                                        controller.reminderOnOffStatus![index],
                                    onChanged: (value) {
                                      controller.reminderOnOffStatus![index] =
                                          value;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )),
                    )
                  : const SizedBox(),
            ),
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                onPressed: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((value) => {
                        if (value != null)
                          {
                            SessionManager.saveReminderTime(value),
                            SessionManager.saveReminderStatus(false),
                          }
                        else
                          {
                            debugPrint('Time is not selected'),
                          }
                      });
                  debugPrint(controller.reminderTiming.toString());
                  debugPrint(controller.reminderOnOffStatus.toString());
                },
                icon: const Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
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
