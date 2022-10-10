import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class CommentsController extends GetxController {
  ApiServices apiServices = ApiServices();
  @override
  void onClose() {}

  @override
  void onInit() {
    apiServices.getAllCommentsById();
    super.onInit();
  }
}
