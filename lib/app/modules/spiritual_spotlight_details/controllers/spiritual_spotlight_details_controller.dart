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
  final RxString linkToOpen = ''.obs;
  late Uri linkinHtml = Uri.parse(linkToOpen.value);

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

    spiritualSpotlightVideoInterviewImageUrl.value = responseJson['thumbnail'];
    spiritualSpotlightVideoInterviewTitle.value =
        responseJson['title']['rendered'];
  }
}
