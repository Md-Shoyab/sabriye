import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/curved_navigation.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          extendBody: true,
          bottomNavigationBar: CurvedNavigation(controller: controller),
          body: controller.screens[controller.selectedPageIndex.value],
        ),
      ),
    );
  }
}
