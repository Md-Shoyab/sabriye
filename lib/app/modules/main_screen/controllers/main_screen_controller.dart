import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/app/modules/account_settings/views/account_settings_view.dart';
import 'package:sabriye/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:sabriye/app/modules/dashboard/views/dashboard_view.dart';
import 'package:sabriye/app/modules/inner_union_oracle/views/inner_union_oracle_view.dart';
import 'package:sabriye/app/modules/side_menu/views/side_menu_view.dart';
import 'package:sabriye/app/modules/store/views/store_view.dart';

class MainScreenController extends GetxController {
  RxInt selectedPageIndex = 0.obs;

  final List<Widget> navigationIcons = [
    Image.asset(AppAssets.navgaitonHomeIcon),
    Image.asset(AppAssets.navgaitonOracleCardsIcon),
    Image.asset(AppAssets.navgaitonStoreIcon),
    Image.asset(AppAssets.navgaitonAccountSettingIcon),
    Image.asset(AppAssets.navgaitonSideMenuIcon),
  ];

  final screens = [
    const DashboardView(),
    const InnerUnionOracleView(),
    const StoreView(),
    const AccountSettingsView(),
    const SideMenuView(),
  ];

  void updateSelectedPageIndex(int index) {
    selectedPageIndex.value = index;
  }

  @override
  void onInit() {
    Get.put(DashboardController());
    super.onInit();
  }
}
