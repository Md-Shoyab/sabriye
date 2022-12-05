import 'dart:developer';

import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class SpiritualSpotlightDetailsController extends GetxController {
  ApiServices apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  @override
  void onClose() {}

  @override
  void onInit() {
    log(id.toString());
    apiServices.getSpiritualSpotlightVideoInterViewDetails(id);
    super.onInit();
  }
}
