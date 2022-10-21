import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class GivingBackController extends GetxController {
  ApiServices apiServices = ApiServices();
  RxInt currentCardIndex = 0.obs;

  final List<String> carouselImages = [];
  final List carouselDescription = [];

  void changeIndexOnCasrosleSlide(index) {
    currentCardIndex.value = index;
  }

  @override
  void onClose() {}
}
