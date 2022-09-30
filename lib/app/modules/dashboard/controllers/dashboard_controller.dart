import 'package:get/get.dart';
import 'package:sabriye/app/modules/inner_union_oracle/views/inner_union_oracle_view.dart';
import 'package:sabriye/services/api_services.dart';
import '../../../constants/app_assets.dart';
import '../../account_settings/views/account_settings_view.dart';
import '../../side_menu/views/side_menu_view.dart';
import '../../store/views/store_view.dart';
import '../views/dashboard_view.dart';

class DashboardController extends GetxController {
  final ApiServices apiServices = ApiServices();
  RxInt selectedPageIndex = 0.obs;

  final List<String> storyImage = [
    AppAssets.storyImage1,
    AppAssets.storyImage2,
    AppAssets.storyImage3
  ];

  final List<String> testimonalUserNameText = [
    'REENA BAHARANI',
    'MIROSLAVA D.',
    'NATASHA LEIGH BRAY',
    'Ann, USA',
    '',
  ];

  final List<String> testimonalUserProfessionText = [
    'Medical Doctor',
    'Business Owner',
    'Multi 7 figure Healer & founder HeartHealing®',
    '',
  ];

  final List<String> testimonalUserTestimonyText = [
    'I have worked with other healers and having one session with Sabriyé was the equivalent of 8-10 sessions with someone else.',
    '… we did a session to release blocks on money, … and I more than doubled my income.',
    '… Sabriyé is an amazing healer. I loved my Akasha healing sessions with her. I saw improvements in my business and relationships thanks to the work we did.',
    '',
  ];

  final screens = [
    const DashboardView(),
    const InnerUnionOracleView(),
    const StoreView(),
    const AccountSettingsView(),
    const SideMenuView(),
  ];

  @override
  void onInit() {
    apiServices.getAllTeachingsCategories();
    apiServices.getAllSpritiualSpotlightVideoInterview();

    super.onInit();
  }

  void updateSelectedPageIndex(int index) {
    selectedPageIndex.value = index;
  }
}
