import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/account_settings_option.dart';
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
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const VerticalGap(gap: 20),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            child: const AccountSettingsOption(
              settingName: 'Profile',
              settingIconImage: AppAssets.profileIcon,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.CHANGE_PASSWORD);
            },
            child: const AccountSettingsOption(
              settingName: 'Change Password',
              settingIconImage: AppAssets.changePasswordIcon,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.CHANGE_EMAIL);
            },
            child: const AccountSettingsOption(
              settingName: 'Change Email',
              settingIconImage: AppAssets.changeEmailIcon,
            ),
          ),
          const AccountSettingsOption(
            settingName: 'FAQ',
            settingIconImage: AppAssets.faqIcon,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.SUPPORT);
            },
            child: const AccountSettingsOption(
              settingName: 'Support',
              settingIconImage: AppAssets.supportIcon,
            ),
          ),
        ],
      ),
    );
  }
}
