import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
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
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
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
      body: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * .08,
            ),
            SizedBox(
              height: Get.height * .35,
              child: AnalogClock(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2.0, color: AppColors.primaryColor),
                    color: Colors.transparent,
                    shape: BoxShape.circle),
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
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const VerticalGap(),
            const Text(
              AppConstants.dailyReminder,
              style: TextStyle(
                fontSize: 30,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const VerticalGap(gap: 40),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryColor,
                    blurRadius: 4,
                  )
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
