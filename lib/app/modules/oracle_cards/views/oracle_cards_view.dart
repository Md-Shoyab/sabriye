import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/oracle_cards_controller.dart';

class OracleCardsView extends GetView<OracleCardsController> {
  const OracleCardsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'OracleCardsView',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
