import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class InnerUnionOracleController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  RxBool backViewCard = false.obs;
  RxInt randomIndex = 0.obs;
  RxBool isLoading = false.obs;
  RxString innerUnionBannerImageUrl = ''.obs;
  RxString innerUnionBannerIntroText = ''.obs;
  RxString boxOneText = ''.obs;
  RxString boxTwoText = ''.obs;
  RxString boxThreeText = ''.obs;
  RxList orcaleCardsList = [].obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getInnerUnionBannerImage();
    await getInnerUnionIntroText();
    await getAllCards();
    isLoading.value = false;
    super.onInit();
  }

  void getRandomIndex(int maxNumber) {
    randomIndex.value = Random().nextInt(maxNumber);
    debugPrint('This is random number ===> ${randomIndex.value}');
    debugPrint('This is max number ===> $maxNumber');
  }

  Future<void> getInnerUnionBannerImage() async {
    final responseJson = await _apiServices.getInnerUnionBannerImage();
    innerUnionBannerImageUrl.value =
        responseJson['custom_fields']['Inner-Union-Oracle'][0];
  }

  Future<void> getInnerUnionIntroText() async {
    final responseJson = await _apiServices.getInnerUnionIntroText();
    innerUnionBannerIntroText.value = responseJson['content']['rendered'];
    boxOneText.value = responseJson['custom_fields']['box1'][0];
    boxTwoText.value = responseJson['custom_fields']['box2'][0];
    boxThreeText.value = responseJson['custom_fields']['box3'][0];
  }

  Future<void> getAllCards() async {
    final responseJson = await _apiServices.getAllCards();
    orcaleCardsList.value = responseJson;
  }
}
