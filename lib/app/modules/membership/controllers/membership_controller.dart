import 'package:get/get.dart';
import 'package:sabriye/model/membership_accordion.dart';
import 'package:sabriye/services/api_services.dart';

class MembershipController extends GetxController {
  late List<MemberShipAccordionItem> membershipAccordionItem;
  final ApiServices apiServices = ApiServices();
  // final RxBool isExpanded = false.obs;
  final List isExpanded = [
    false.obs,
    false.obs,
    false.obs,
    false.obs,
    false.obs
  ];
  @override
  void onInit() {
    apiServices.membershipPayment();
    super.onInit();
  }
}
