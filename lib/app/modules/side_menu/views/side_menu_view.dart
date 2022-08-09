import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/side_menu_controller.dart';

class SideMenuView extends GetView<SideMenuController> {
  const SideMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'SideMenuView',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
