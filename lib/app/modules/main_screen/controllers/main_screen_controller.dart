import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_colors.dart';
import 'package:sabriye/app/modules/account_settings/views/account_settings_view.dart';
import 'package:sabriye/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:sabriye/app/modules/dashboard/views/dashboard_view.dart';
import 'package:sabriye/app/modules/oracle_cards/views/oracle_cards_view.dart';
import 'package:sabriye/app/modules/side_menu/views/side_menu_view.dart';
import 'package:sabriye/app/modules/store/views/store_view.dart';

class MainScreenController extends GetxController {
  RxInt selectedPageIndex = 0.obs;
  final List<Widget> navigationIcons = [
    const Icon(
      Icons.home,
      size: 30,
      color: AppColors.buttonColor,
    ),
    const Icon(
      Icons.message,
      size: 30,
      color: AppColors.buttonColor,
    ),
    const Icon(
      Icons.shopping_basket,
      size: 30,
      color: AppColors.buttonColor,
    ),
    const Icon(
      Icons.settings,
      size: 30,
      color: AppColors.buttonColor,
    ),
    const Icon(
      Icons.menu,
      size: 30,
      color: AppColors.buttonColor,
    )
  ];

  final screens = [
    const DashboardView(),
    const OracleCardsView(),
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
