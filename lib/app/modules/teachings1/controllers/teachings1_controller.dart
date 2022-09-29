import 'dart:developer';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_constants.dart';

class Teachings1Controller extends GetxController {
  ApiServices apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  final String appTitle = Get.arguments['appTitle'].toString();

  final List<String> scaredRealtionshipCategories = [
    AppConstants.karmicRelationshipText,
    AppConstants.soulPartnershipText,
    AppConstants.soulmatesText,
  ];
  final List<String> scaredRealtionshipCategoryImage = [
    AppAssets.karmicRelationshipImage,
    AppAssets.soulPartnershipImage,
    AppAssets.soulmatesImage,
  ];

  @override
  void onInit() {
    log(id);
    apiServices.getAllTeachingsSubCategories(id);
    super.onInit();
  }
}
