import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class InnerUnionOracleController extends GetxController {
  ApiServices apiServices = ApiServices();
  RxBool checkPaidUser = false.obs;
  @override
  void onClose() {}

  @override
  void onInit() {
    apiServices.getAllCards();
    super.onInit();
  }
}
