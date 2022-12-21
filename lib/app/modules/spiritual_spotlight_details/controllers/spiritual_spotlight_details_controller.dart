import 'dart:developer';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class SpiritualSpotlightDetailsController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  final RxBool isLoading = false.obs;
  final RxString spiritualSpotlightVideoInterviewImageUrl = ''.obs;
  final RxString spiritualSpotlightVideoInterviewContent = ''.obs;
  final RxString spiritualSpotlightVideoInterviewTitle = ''.obs;
  final RxString bySabriyeAyana = ''.obs;
  final RxString authorDescription = ''.obs;
  final RxString authorImageUrl = ''.obs;
  final RxString pressedUrl = ''.obs;

  @override
  void onInit() async {
    log(id.toString());
    isLoading.value = true;
    await getSpiritualSpotlightVideoInterViewDetails();
    isLoading.value = false;
    super.onInit();
  }

  Future<void> getSpiritualSpotlightVideoInterViewDetails() async {
    final responseJson =
        await _apiServices.getSpiritualSpotlightVideoInterViewDetails(id);
    spiritualSpotlightVideoInterviewContent.value =
        responseJson['content']['rendered'];
    bySabriyeAyana.value = responseJson['about_author']['title'];
    authorDescription.value = responseJson['about_author']['description'];
    authorImageUrl.value = responseJson['about_author']['image'];

    spiritualSpotlightVideoInterviewImageUrl.value = responseJson['thumbnail'];
    spiritualSpotlightVideoInterviewTitle.value =
        responseJson['title']['rendered'];
  }
}
