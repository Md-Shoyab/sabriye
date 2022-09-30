import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';

import '../constants/app_colors.dart';

class AccountSettingsOption extends StatelessWidget {
  final String settingName;
  final String settingIconImage;
  const AccountSettingsOption({
    Key? key,
    required this.settingName,
    required this.settingIconImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: Get.width * .8,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: AppColors.darkPrimaryColor,
            blurRadius: 2.0,
            offset: Offset(-1, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Row(
          children: [
            Image.asset(settingIconImage),
            const HorizontalGap(gap: 15),
            Text(settingName),
          ],
        ),
      ),
    );
  }
}
