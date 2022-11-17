import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';

class FaqController extends GetxController {
  final ApiServices apiServices = ApiServices();
  final List isExpanded = [false.obs, false.obs, false.obs, false.obs];

  late List future = [
    apiServices.getFaqInnerUnion(),
    apiServices.getFaqTeachings(),
    apiServices.getFaqAccount(),
    apiServices.getFaqTroubleshoot(),
  ];
  final List<String> faqCategories = [
    'The Inner Circle:',
    'The Teachings:',
    'Managing My Account:',
    'Troubleshooting:',
  ];

  @override
  void onInit() {
    apiServices.getFaqInnerUnion();
    apiServices.getFaqTeachings();
    apiServices.getFaqAccount();
    apiServices.getFaqTroubleshoot();
    super.onInit();
  }
}
