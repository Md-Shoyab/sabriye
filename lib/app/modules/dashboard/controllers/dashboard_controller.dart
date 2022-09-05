import 'package:get/get.dart';
import 'package:sabriye/app/modules/inner_union_oracle/views/inner_union_oracle_view.dart';
import 'package:sabriye/app/routes/app_pages.dart';
import '../../../constants/app_assets.dart';
import '../../account_settings/views/account_settings_view.dart';
import '../../side_menu/views/side_menu_view.dart';
import '../../store/views/store_view.dart';
import '../views/dashboard_view.dart';

class DashboardController extends GetxController {
  final List<String> storyImage = [
    AppAssets.storyImage1,
    AppAssets.storyImage2,
    AppAssets.storyImage3
  ];

  final List<String> teachingsDashboardImage = [
    AppAssets.scaredRelationship,
    AppAssets.teachings,
    AppAssets.interviewImage
  ];

  final List<String> spiritualSpotlightImage = [
    AppAssets.videoInterviewImage,
    AppAssets.videoInterviewImage2,
    AppAssets.videoInterviewImage3,
  ];

  final List<String> dashboardTeachingsText = [
    'Sacred Relationship',
    'Interviews',
    'Teaching',
  ];
  final List<String> testimonalImage = [
    AppAssets.topImage,
    AppAssets.sessionsImage,
    AppAssets.programsImage,
    AppAssets.retreatsImage,
  ];
  final List<String> testimonalTypeText = [
    'Top',
    'Sessions',
    'Programs',
    'Retreats'
  ];

  final List<String> routesList = [
    Routes.TOP_TESTIMONIALS,
    Routes.SESSIONS_TESTIMONIALS,
    Routes.AKASHA_HEALING_FULL_DETAILS,
    Routes.COMMENTS,
  ];
  RxInt selectedPageIndex = 0.obs;

  final screens = [
    const DashboardView(),
    const InnerUnionOracleView(),
    const StoreView(),
    const AccountSettingsView(),
    const SideMenuView(),
  ];

  void updateSelectedPageIndex(int index) {
    selectedPageIndex.value = index;
  }
}
