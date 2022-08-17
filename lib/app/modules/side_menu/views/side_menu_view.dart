import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_colors.dart';
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
            onTap: () {},
            child: const AccountSettingsOption(
              settingIcon: Icons.video_camera_back,
              settingName: 'In the Spiritual Spotlight',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const AccountSettingsOption(
              settingIcon: Icons.download,
              settingName: 'Download Free e-Book Now',
            ),
          ),
          InkWell(
            onTap: () {},
            child: const AccountSettingsOption(
              settingIcon: Icons.alarm,
              settingName: 'Alarm',
            ),
          ),
          const AccountSettingsOption(
            settingIcon: Icons.web_sharp,
            settingName: 'Blogs',
          ),
          const AccountSettingsOption(
            settingIcon: Icons.help,
            settingName: 'Giving Back',
          ),
          const AccountSettingsOption(
            settingIcon: Icons.abc_outlined,
            settingName: 'About',
          ),
        ],
      ),
    );
  }
}
