import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class SessionDetailsController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final RxBool isLoading = false.obs;
  final RxString sessionDetails = ''.obs;
  final RxString rootCauseOfStruggleContent = ''.obs;
  final RxString whatisAkashayHealingQuantumText = ''.obs;
  final RxString doYouRecognizeThisText = ''.obs;
  final RxString bookYourSessionTitle = ''.obs;
  final RxString bookYourSessionContent = ''.obs;
  final RxList testimonials = [].obs;
  final RxList sessionCardDetails = [].obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getSessionDetails();
    await sessionTestimony();
    await getSessionDetailsPartTwo();
    await sessionDetailsPartThree();
    await sessionDetailsPartFour();
    await sessionDetailsPartFive();
    await sessionCardsDetails();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getSessionDetails() async {
    final responseJson = await _apiServices.sessionDetails();
    sessionDetails.value = responseJson['content']['rendered'];
  }

  Future<void> sessionTestimony() async {
    final responseJson = await _apiServices.sessionTestimony();
    testimonials.value = responseJson;
  }

  Future<void> getSessionDetailsPartTwo() async {
    final responseJson = await _apiServices.sessionDetailsPartTwo();
    rootCauseOfStruggleContent.value = responseJson['content']['rendered'];
  }

  Future<void> sessionDetailsPartThree() async {
    final responseJson = await _apiServices.sessionDetailsPartThree();
    whatisAkashayHealingQuantumText.value = responseJson['content']['rendered'];
  }

  Future<void> sessionDetailsPartFour() async {
    final responseJson = await _apiServices.sessionDetailsPartFour();
    doYouRecognizeThisText.value = responseJson['content']['rendered'];
  }

  Future<void> sessionDetailsPartFive() async {
    final responseJson = await _apiServices.sessionDetailsPartFive();
    bookYourSessionTitle.value = responseJson['title']['rendered'];
    bookYourSessionContent.value = responseJson['content']['rendered'];
  }

  Future<void> sessionCardsDetails() async {
    final responseJson = await _apiServices.sessionCardsDetails();
    sessionCardDetails.value = responseJson;
  }
}
