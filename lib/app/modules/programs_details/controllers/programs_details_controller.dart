import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class ProgramsDetailsController extends GetxController {
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final RxString akashaHealingIntro = ''.obs;
  final RxString clientResults = ''.obs;
  final RxString testimonyUserName = ''.obs;
  final RxString testimonyContent = ''.obs;
  final RxString testimonyImageUrl = ''.obs;
  final RxList testimonyList = [].obs;
  final ApiServices _apiServices = ApiServices();
  final RxBool isLoading = false.obs;

  @override
  void onInit() async {
    isLoading.value = true;
    await getAkashaHealingCertificationIntro();
    await getAkashaHealingClientResults();
    await getAkashaHealingTestimony();
    isLoading.value = false;
    super.onInit();
  }

  @override
  void onClose() {
    fnameController.dispose();
    lnameController.dispose();
    emailController.dispose();
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Provide valid email.";
    } else if (GetUtils.isEmail(value)) {
      debugPrint('This is correct email');
    } else {
      return 'Provide a valid email';
    }
    return null;
  }

  String? validateFirstName(String? value) {
    if (value!.isEmpty) {
      return 'Provide a valid first name';
    } else {}
    return null;
  }

  String? validateLastName(String? value) {
    if (value!.isEmpty) {
      return 'Provide a valid last name';
    } else {}
    return null;
  }

  Future<void> getAkashaHealingCertificationIntro() async {
    final responseJson =
        await _apiServices.getAkashaHealingCertificationIntro();
    akashaHealingIntro.value = responseJson['content']['rendered'];
  }

  Future<void> getAkashaHealingClientResults() async {
    final responseJson = await _apiServices.getAkashaHealingClientResults();
    clientResults.value = responseJson['content']['rendered'];
  }

  Future<void> getAkashaHealingTestimony() async {
    final responseJson = await _apiServices.getAkashaHealingTestimony();
    testimonyUserName.value = responseJson[3]['title']['rendered'];
    testimonyContent.value = responseJson[3]['content']['rendered'];
    testimonyImageUrl.value = responseJson[3]['thumbnail'];
  }
}
