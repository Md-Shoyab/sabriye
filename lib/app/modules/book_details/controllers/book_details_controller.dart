import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class BookDetailsController extends GetxController {
  final ApiServices apiServices = ApiServices();

  @override
  void onInit() {
    apiServices.getBookDetails();
    super.onInit();
  }
}
