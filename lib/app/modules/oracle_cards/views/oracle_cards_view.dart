import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/oracle_cards_controller.dart';

class OracleCardsView extends GetView<OracleCardsController> {
  const OracleCardsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Image.network(
        'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png',
        height: Get.height,
        width: Get.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
