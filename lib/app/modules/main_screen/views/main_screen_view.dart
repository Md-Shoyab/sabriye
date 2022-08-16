import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/curved_navigation.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            Obx(
              () => controller.screens[controller.selectedPageIndex.value],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CurvedNavigation(
                controller: controller,
              ),
            )
          ],
        ),
      ),
    );
  }
}
