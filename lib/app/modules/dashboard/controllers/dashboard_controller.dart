import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_assets.dart';

class DashboardController extends GetxController {
  RxInt selectedPageIndex = 0.obs;

  final navigationIcons = <Widget>[
    const Icon(Icons.home, size: 30),
    const Icon(Icons.chat, size: 30),
    const Icon(Icons.shopping_bag, size: 30),
    const Icon(Icons.card_giftcard, size: 30),
    const Icon(Icons.menu, size: 30),
  ];

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

  void updateSelectedPageIndex(int index) {
    selectedPageIndex.value = index;
  }
}
