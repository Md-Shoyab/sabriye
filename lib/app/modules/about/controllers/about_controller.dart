import 'package:get/get.dart';

import '../../../../services/api_services.dart';

class AboutController extends GetxController {
  ApiServices apiServices = ApiServices();
  @override
  void onClose() {}
  @override
  void onInit() {
    apiServices.getAboutInfo();
    super.onInit();
  }
}
