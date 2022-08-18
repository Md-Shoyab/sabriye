import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/account_settings_option.dart';
import '../../../widgets/gapper.dart';
import '../controllers/side_menu_controller.dart';

class SideMenuView extends GetView<SideMenuController> {
  const SideMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Side Menu',
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
              Get.toNamed(Routes.SPIRITUAL_SPOTLIGHT);
            },
            child: const AccountSettingsOption(
              settingName: 'In the Spiritual Spotlight',
              settingIconImage: '',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const AccountSettingsOption(
              settingName: 'Download Free e-Book Now',
              settingIconImage: AppAssets.downloadEbookIcon,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const AccountSettingsOption(
              settingName: 'Alarm',
              settingIconImage: AppAssets.alarmIcon,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.BLOGS_LISTING);
            },
            child: const AccountSettingsOption(
              settingName: 'Blogs',
              settingIconImage: AppAssets.blogIcon,
            ),
          ),
          const AccountSettingsOption(
            settingName: 'Giving Back',
            settingIconImage: AppAssets.givingBackIcon,
          ),
          const AccountSettingsOption(
            settingName: 'About',
            settingIconImage: AppAssets.aboutIcon,
          ),
        ],
      ),
    );
  }
}
