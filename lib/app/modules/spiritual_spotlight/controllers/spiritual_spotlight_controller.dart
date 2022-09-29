import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import 'package:sabriye/services/api_services.dart';

class SpiritualSpotlightController extends GetxController {
  ApiServices apiServices = ApiServices();
  final spiritualImageList = [
    AppAssets.spiritualSpotlightImage1,
    AppAssets.spiritualSpotlightImage2,
    AppAssets.spiritualSpotlightImage3,
  ];
  @override
  void onClose() {}

  @override
  void onInit() {
    apiServices.getAllSpritiualSpotlightVideoInterview();
    super.onInit();
  }
}
