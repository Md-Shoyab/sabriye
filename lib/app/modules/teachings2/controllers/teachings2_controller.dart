import 'dart:developer';
import 'package:get/get.dart';
import 'package:sabriye/services/api_services.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_constants.dart';

class Teachings2Controller extends GetxController {
  final ApiServices apiServices = ApiServices();
  final String id = Get.arguments['id'].toString();
  final String appTitle = Get.arguments['appTitle'].toString();

  final List<String> karmicRealtionshipPostTitle = [
    AppConstants.karmicRelationshipBlogTitleText1,
    AppConstants.karmicRelationshipBlogTitleText2,
    AppConstants.karmicRelationshipBlogTitleText3,
  ];
  final List<String> karmicRelationshipCategoryImage = [
    AppAssets.karmicRelationshipImage,
    AppAssets.karmicImage2,
    AppAssets.karmicImage3,
  ];
  @override
  void onInit() {
    log(id);
    apiServices.getAllBlogsByTeachingsSubCategories(id);
    super.onInit();
  }
}
