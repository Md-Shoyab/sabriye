import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/account_settings/bindings/account_settings_binding.dart';
import '../modules/account_settings/views/account_settings_view.dart';
import '../modules/blogs_listing/bindings/blogs_listing_binding.dart';
import '../modules/blogs_listing/views/blogs_listing_view.dart';
import '../modules/book_details/bindings/book_details_binding.dart';
import '../modules/book_details/views/book_details_view.dart';
import '../modules/books_listing/bindings/books_listing_binding.dart';
import '../modules/books_listing/views/books_listing_view.dart';
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
import '../modules/inner_union_oracle/bindings/inner_union_oracle_binding.dart';
import '../modules/inner_union_oracle/views/inner_union_oracle_view.dart';
import '../modules/karmic_relationships/bindings/karmic_relationships_binding.dart';
import '../modules/karmic_relationships/views/karmic_relationships_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main_screen/bindings/main_screen_binding.dart';
import '../modules/main_screen/views/main_screen_view.dart';
import '../modules/membership/bindings/membership_binding.dart';
import '../modules/membership/views/membership_view.dart';
import '../modules/new_email/bindings/new_email_binding.dart';
import '../modules/new_email/views/new_email_view.dart';
import '../modules/new_password/bindings/new_password_binding.dart';
import '../modules/new_password/views/new_password_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/programs_details/bindings/programs_details_binding.dart';
import '../modules/programs_details/views/programs_details_view.dart';
import '../modules/programs_listing/bindings/programs_listing_binding.dart';
import '../modules/programs_listing/views/programs_listing_view.dart';
import '../modules/sacred_relationships/bindings/sacred_relationships_binding.dart';
import '../modules/sacred_relationships/views/sacred_relationships_view.dart';
import '../modules/session_details/bindings/session_details_binding.dart';
import '../modules/session_details/views/session_details_view.dart';
import '../modules/session_details_akashay/bindings/session_details_akashay_binding.dart';
import '../modules/session_details_akashay/views/session_details_akashay_view.dart';
import '../modules/sessions_listing/bindings/sessions_listing_binding.dart';
import '../modules/sessions_listing/views/sessions_listing_view.dart';
import '../modules/sessions_testimonials/bindings/sessions_testimonials_binding.dart';
import '../modules/sessions_testimonials/views/sessions_testimonials_view.dart';
import '../modules/set_reminder/bindings/set_reminder_binding.dart';
import '../modules/set_reminder/views/set_reminder_view.dart';
import '../modules/side_menu/bindings/side_menu_binding.dart';
import '../modules/side_menu/views/side_menu_view.dart';
import '../modules/spiritual_spotlight/bindings/spiritual_spotlight_binding.dart';
import '../modules/spiritual_spotlight/views/spiritual_spotlight_view.dart';
import '../modules/store/bindings/store_binding.dart';
import '../modules/store/views/store_view.dart';
import '../modules/support/bindings/support_binding.dart';
import '../modules/support/views/support_view.dart';
import '../modules/teachings_details/bindings/teachings_details_binding.dart';
import '../modules/teachings_details/views/teachings_details_view.dart';
import '../modules/top_testimonials/bindings/top_testimonials_binding.dart';
import '../modules/top_testimonials/views/top_testimonials_view.dart';
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
    GetPage(
      name: _Paths.SPIRITUAL_SPOTLIGHT,
      page: () => const SpiritualSpotlightView(),
      binding: SpiritualSpotlightBinding(),
    ),
    GetPage(
      name: _Paths.BLOGS_LISTING,
      page: () => const BlogsListingView(),
      binding: BlogsListingBinding(),
    ),
    GetPage(
      name: _Paths.BOOKS_LISTING,
      page: () => const BooksListingView(),
      binding: BooksListingBinding(),
    ),
    GetPage(
      name: _Paths.SESSIONS_LISTING,
      page: () => const SessionsListingView(),
      binding: SessionsListingBinding(),
    ),
    GetPage(
      name: _Paths.PROGRAMS_LISTING,
      page: () => const ProgramsListingView(),
      binding: ProgramsListingBinding(),
    ),
    GetPage(
      name: _Paths.INNER_UNION_ORACLE,
      page: () => const InnerUnionOracleView(),
      binding: InnerUnionOracleBinding(),
    ),
    GetPage(
      name: _Paths.SUPPORT,
      page: () => const SupportView(),
      binding: SupportBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_DETAILS,
      page: () => const BookDetailsView(),
      binding: BookDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.SET_REMINDER,
      page: () => const SetReminderView(),
      binding: SetReminderBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP,
      page: () => const MembershipView(),
      binding: MembershipBinding(),
    ),
    GetPage(
      name: _Paths.TOP_TESTIMONIALS,
      page: () => const TopTestimonialsView(),
      binding: TopTestimonialsBinding(),
    ),
    GetPage(
      name: _Paths.SESSIONS_TESTIMONIALS,
      page: () => const SessionsTestimonialsView(),
      binding: SessionsTestimonialsBinding(),
    ),
    GetPage(
      name: _Paths.SESSION_DETAILS,
      page: () => const SessionDetailsView(),
      binding: SessionDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SESSION_DETAILS_AKASHAY,
      page: () => const SessionDetailsAkashayView(),
      binding: SessionDetailsAkashayBinding(),
    ),
    GetPage(
      name: _Paths.PROGRAMS_DETAILS,
      page: () => const ProgramsDetailsView(),
      binding: ProgramsDetailsBinding(),
    ),
  ];
}
