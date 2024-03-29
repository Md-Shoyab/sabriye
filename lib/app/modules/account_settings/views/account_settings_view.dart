import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/font_names.dart';
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
          AppConstants.accountSettingsText,
          style: TextStyle(
            fontFamily: FontName.sourceSansPro,
            color: AppColors.brownColor,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const VerticalGap(gap: 22),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            child: const AccountSettingsOption(
              settingName: AppConstants.profileText,
              settingIconImage: AppAssets.profileIcon,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.CHANGE_PASSWORD);
            },
            child: const AccountSettingsOption(
              settingName: AppConstants.changePasswordText,
              settingIconImage: AppAssets.changePasswordIcon,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.CHANGE_EMAIL);
            },
            child: const AccountSettingsOption(
              settingName: AppConstants.changeEmailText,
              settingIconImage: AppAssets.changeEmailIcon,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.FAQ);
            },
            child: const AccountSettingsOption(
              settingName: AppConstants.fAQText,
              settingIconImage: AppAssets.faqIcon,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.SUPPORT);
            },
            child: const AccountSettingsOption(
              settingName: AppConstants.supportText,
              settingIconImage: AppAssets.supportIcon,
            ),
          ),
        ],
      ),
    );
  }
}
