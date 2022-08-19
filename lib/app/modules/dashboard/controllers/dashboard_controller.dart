import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/modules/inner_union_oracle/views/inner_union_oracle_view.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../account_settings/views/account_settings_view.dart';
import '../../side_menu/views/side_menu_view.dart';
import '../../store/views/store_view.dart';
import '../views/dashboard_view.dart';

class DashboardController extends GetxController {
  final List<String> storyImage = [
    AppAssets.storyImage1,
    AppAssets.storyImage2,
    AppAssets.storyImage3
  ];
  final List<String> testimonalImage = [
    AppAssets.topImage,
    AppAssets.sessionsImage,
    AppAssets.programsImage,
    AppAssets.retreatsImage,
  ];
  final List<String> testimonalTypeText = [
    'Top',
    'Sessions',
    'Programs',
    'Retreats'
  ];
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
const InnerUnionOracleView(),
    const StoreView(),
    const AccountSettingsView(),
    const SideMenuView(),
  ];

  void updateSelectedPageIndex(int index) {
    selectedPageIndex.value = index;
  }
}
