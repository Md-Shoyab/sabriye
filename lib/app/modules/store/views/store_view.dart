import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/store_controller.dart';

class StoreView extends GetView<StoreController> {
  const StoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'StoreView',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
