import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class SpiritualSpotlightDetailsController extends GetxController {
  ApiServices apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  @override
  void onClose() {}

  @override
  void onInit() {
    apiServices.getSpiritualSpotlightVideoInterViewDetails(id);
    super.onInit();
  }
}
