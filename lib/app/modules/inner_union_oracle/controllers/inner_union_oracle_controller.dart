import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class InnerUnionOracleController extends GetxController {
  ApiServices apiServices = ApiServices();
  RxBool backViewCard = false.obs;
  RxInt randomIndex = 0.obs;

  @override
  void onInit() {
    apiServices.getAllCards();
    super.onInit();
  }

  void getRandomIndex(int maxNumber) {
    randomIndex.value = Random().nextInt(maxNumber);
    debugPrint('This is random number ===> ${randomIndex.value}');
    debugPrint('This is max number ===> $maxNumber');
  }
}
