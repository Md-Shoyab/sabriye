import 'dart:math';
import 'package:get/get.dart';
import 'package:sabriye/app/local_storage/sessions.dart';
import 'package:sabriye/services/api_services.dart';

class InnerUnionOracleController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  RxBool backViewCard = false.obs;
  RxInt oracleCardIndex = 0.obs;
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

  void onFlip() {
    backViewCard.toggle();

    if (_isOracleCardClickable()) {
      _getRandomIndexAndUpdateOracleCardIndex();
      SessionManager.saveOracleCardClickedTime(DateTime.now());
    } else {
      ///TODO; Impelment here when flip is done within 24 hours.
    }
  }

  void _getRandomIndexAndUpdateOracleCardIndex() {
    if (backViewCard.isTrue) {
      oracleCardIndex.value = Random().nextInt(orcaleCardsList.length);
    }
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

  /// Returns True within the 24 hours of Click and False if 24 hours not Completed
  bool _isOracleCardClickable() {
    DateTime? oracleCardClickedTime = SessionManager.getOracleCardClickedTime();

    if (oracleCardClickedTime != null) {
      DateTime presentTime = DateTime.now();

      return presentTime.difference(oracleCardClickedTime).inSeconds >= 10;
      // 86400;
    } else {
      return true;
    }
  }
}
