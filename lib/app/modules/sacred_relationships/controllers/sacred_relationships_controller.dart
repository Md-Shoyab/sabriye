import 'package:get/get.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../../../constants/app_constants.dart';

class SacredRelationshipsController extends GetxController {
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
}
