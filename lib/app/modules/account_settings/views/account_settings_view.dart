import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../controllers/account_settings_controller.dart';

class AccountSettingsView extends GetView<AccountSettingsController> {
  const AccountSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Account Settings',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.buttonColor,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const VerticalGap(gap: 20),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            child: const AccountSettingsOption(
              settingIcon: Icons.person,
              settingName: 'Profile',
            ),
          ),
          const AccountSettingsOption(
            settingIcon: Icons.password,
            settingName: 'Change Password',
          ),
          const AccountSettingsOption(
            settingIcon: Icons.email,
            settingName: 'Change Email',
          ),
          const AccountSettingsOption(
            settingIcon: Icons.question_mark,
            settingName: 'FAQ',
          ),
          const AccountSettingsOption(
            settingIcon: Icons.headphones,
            settingName: 'Support',
          ),
        ],
      ),
    );
  }
}

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
