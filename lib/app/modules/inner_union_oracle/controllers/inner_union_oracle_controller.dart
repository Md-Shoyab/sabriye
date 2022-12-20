import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class InnerUnionOracleController extends GetxController {
  final ApiServices apiServices = ApiServices();
  RxBool backViewCard = false.obs;
  RxInt randomIndex = 0.obs;
  RxList orcaleCardsList = [].obs;
  RxBool isLoading = false.obs;
  RxString innerUnionBannerImageUrl = ''.obs;
  RxString innerUnionBannerIntroText = ''.obs;
  RxString pointOneText = ''.obs;
  RxString pointTwoText = ''.obs;
  RxString pointThreeText = ''.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getAllCards();
    await getInnerUnionBannerImage();
    await getInnerUnionIntroText();
    isLoading.value = false;
    super.onInit();
  }

  void getRandomIndex(int maxNumber) {
    randomIndex.value = Random().nextInt(maxNumber);
    debugPrint('This is random number ===> ${randomIndex.value}');
    debugPrint('This is max number ===> $maxNumber');
  }

  Future<void> getInnerUnionBannerImage() async {
    final responseJson = await apiServices.getInnerUnionBannerImage();
    innerUnionBannerImageUrl.value =
        responseJson['custom_fields']['Inner-Union-Oracle'][0];
    debugPrint(responseJson['custom_fields']['Inner-Union-Oracle'][0]);
  }

  Future<void> getInnerUnionIntroText() async {
    final responseJson = await apiServices.getInnerUnionIntroText();
    innerUnionBannerIntroText.value = responseJson['content']['rendered'];
    pointOneText.value = responseJson['custom_fields']['box1'][0];
    pointTwoText.value = responseJson['custom_fields']['box2'][0];
    pointThreeText.value = responseJson['custom_fields']['box3'][0];
  }

  Future<void> getAllCards() async {
    final responseJson = await apiServices.getAllCards();
    orcaleCardsList.value = responseJson;
  }
}
