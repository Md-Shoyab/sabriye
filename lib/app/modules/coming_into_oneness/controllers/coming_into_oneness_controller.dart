import 'package:get/get.dart';
import '../../../../services/api_services.dart';

class ComingIntoOnenessController extends GetxController {
  ApiServices apiServices = ApiServices();
  final String title = '1. Taking your manifesting to the soul level';
  final String content =
      '''In order to take your manifesting to the soul level, you first need to get out of the soul’s way. In stage one, I will lead you through three powerful shifts that are necessary to allow your soul to manifest what is truly meant for you according to your Divine design. No need to worry, your soul’s plans for you are better than anything that you can think up for yourself.''';
  final RxBool showValue = false.obs;
  @override
  void onClose() {}
}
