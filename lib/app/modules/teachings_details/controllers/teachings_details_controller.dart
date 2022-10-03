import 'dart:developer';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import '../../../constants/app_assets.dart';

class TeachingsDetailsController extends GetxController {
  ApiServices apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  final String appTitle = Get.arguments['appTitle'].toString();
  final List<String> relatedPostImages = [
    AppAssets.relatedPost1,
    AppAssets.relatedPost2,
    AppAssets.relatedPost3,
  ];

  @override
  void onInit() {
    log(id);
    log(appTitle);
    apiServices.getBlogDetailsById(id);
    super.onInit();
  }

  @override
  void onClose() {}
}
