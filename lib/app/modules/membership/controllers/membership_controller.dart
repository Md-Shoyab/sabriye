import 'package:get/get.dart';

class MembershipController extends GetxController {
  RxBool isExpanded = false.obs;

  void isExpandedUpdate() {
    isExpanded.value = !isExpanded.value;
  }

  @override
  void onClose() {}
}
