import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';

import '../constants/app_colors.dart';

class AccountSettingsOption extends StatelessWidget {
  final String settingName;
  final IconData settingIcon;
  const AccountSettingsOption({
    Key? key,
    required this.settingName,
    required this.settingIcon,
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
        border: Border.all(),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Icon(
              settingIcon,
              color: AppColors.themeTextColor,
            ),
            const HorizontalGap(gap: 20),
            Text(settingName),
          ],
        ),
      ),
    );
  }
}