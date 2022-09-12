import 'package:get/get.dart';

class GivingBackController extends GetxController {
  RxInt currentCardIndex = 0.obs;
  @override
  void onClose() {}

  changeIndexOnCasrosleSlide(index) {
    currentCardIndex.value = index;
  }
}
