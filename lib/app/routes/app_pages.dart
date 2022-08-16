import 'package:get/get.dart';

import '../modules/account_settings/bindings/account_settings_binding.dart';
import '../modules/account_settings/views/account_settings_view.dart';
import '../modules/change_email/bindings/change_email_binding.dart';
import '../modules/change_email/views/change_email_view.dart';
import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/change_password_verfication/bindings/change_password_verfication_binding.dart';
import '../modules/change_password_verfication/views/change_password_verfication_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/karmic_relationships/bindings/karmic_relationships_binding.dart';
import '../modules/karmic_relationships/views/karmic_relationships_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main_screen/bindings/main_screen_binding.dart';
import '../modules/main_screen/views/main_screen_view.dart';
import '../modules/new_email/bindings/new_email_binding.dart';
import '../modules/new_email/views/new_email_view.dart';
import '../modules/new_password/bindings/new_password_binding.dart';
import '../modules/new_password/views/new_password_view.dart';
import '../modules/oracle_cards/bindings/oracle_cards_binding.dart';
import '../modules/oracle_cards/views/oracle_cards_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/sacred_relationships/bindings/sacred_relationships_binding.dart';
import '../modules/sacred_relationships/views/sacred_relationships_view.dart';
import '../modules/side_menu/bindings/side_menu_binding.dart';
import '../modules/side_menu/views/side_menu_view.dart';
import '../modules/store/bindings/store_binding.dart';
import '../modules/store/views/store_view.dart';
import '../modules/teachings_details/bindings/teachings_details_binding.dart';
import '../modules/teachings_details/views/teachings_details_view.dart';
import '../modules/welcome_screens/bindings/welcome_screens_binding.dart';
import '../modules/welcome_screens/views/welcome_screens_view.dart';

// ignore_for_file: constant_identifier_names
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME_SCREENS;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME_SCREENS,
      page: () => const WelcomeScreensView(),
      binding: WelcomeScreensBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_SCREEN,
      page: () => const MainScreenView(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: _Paths.ORACLE_CARDS,
      page: () => const OracleCardsView(),
      binding: OracleCardsBinding(),
    ),
    GetPage(
      name: _Paths.STORE,
      page: () => const StoreView(),
      binding: StoreBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_SETTINGS,
      page: () => const AccountSettingsView(),
      binding: AccountSettingsBinding(),
    ),
    GetPage(
      name: _Paths.SIDE_MENU,
      page: () => const SideMenuView(),
      binding: SideMenuBinding(),
    ),
    GetPage(
      name: _Paths.SACRED_RELATIONSHIPS,
      page: () => const SacredRelationshipsView(),
      binding: SacredRelationshipsBinding(),
    ),
    GetPage(
      name: _Paths.KARMIC_RELATIONSHIPS,
      page: () => const KarmicRelationshipsView(),
      binding: KarmicRelationshipsBinding(),
    ),
    GetPage(
      name: _Paths.TEACHINGS_DETAILS,
      page: () => const TeachingsDetailsView(),
      binding: TeachingsDetailsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_EMAIL,
      page: () => const ChangeEmailView(),
      binding: ChangeEmailBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD_VERFICATION,
      page: () => const ChangePasswordVerficationView(),
      binding: ChangePasswordVerficationBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => const NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.NEW_EMAIL,
      page: () => const NewEmailView(),
      binding: NewEmailBinding(),
    ),
  ];
}
