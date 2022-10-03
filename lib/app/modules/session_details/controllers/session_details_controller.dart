import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class SessionDetailsController extends GetxController {
  ApiServices apiServices = ApiServices();
  @override
  void onClose() {}
  @override
  void onInit() {
    apiServices.getSessions();
    super.onInit();
  }
}
