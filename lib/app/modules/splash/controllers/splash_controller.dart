
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sabriye/app/constants/app_assets.dart';
import '../../../local_storage/sessions.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  final splashImage = AppAssets.blogIcon;

  @override
  void onReady() {
    String? userToken = SessionManager.getUserToken();
    Future.delayed(const Duration(seconds: 3)).then(
      (_) {
        if (userToken == null) {
          Get.offAllNamed(Routes.LOGIN);
        } else {
          Get.offAllNamed(Routes.MAIN_SCREEN);
        }
      },
    );
    super.onReady();
  }

  // void onReady() {
  //   Future.delayed(const Duration(seconds: 3)).then((_) {
  //     Get.toNamed(Routes.LOGIN);
  //   });
  //   super.onReady();
  // }

  @override
  void onInit() {
    GetStorage.init();
    super.onInit();
  }
}
