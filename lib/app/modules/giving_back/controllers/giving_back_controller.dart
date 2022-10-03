import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_constants.dart';

class GivingBackController extends GetxController {
  ApiServices apiServices = ApiServices();
  RxInt currentCardIndex = 0.obs;
  @override
  void onClose() {}

  changeIndexOnCasrosleSlide(index) {
    currentCardIndex.value = index;
  }

  final List<String> carouselImagePath = [
    AppAssets.kettoLogo,
    AppAssets.milaapFoundationImage,
    AppAssets.kivaFoundationImage,
  ];

  final List<String> carouselTitle = [
    AppConstants.kettoProjectTitle,
    AppConstants.milaapProjectTitle,
    AppConstants.kivaProjectTitle,
  ];

  final List<String> carouselContent = [
    AppConstants.kettoProjectContent,
    AppConstants.milaapProjectContent,
    AppConstants.milaapProjectContent,
  ];
  @override
  void onInit() {
    apiServices.getGivingBackInfo();
    super.onInit();
  }
}
