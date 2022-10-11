import 'dart:developer';
import 'package:get/get.dart';
import '../../../local_storage/sessions.dart';

class StoreController extends GetxController {
  @override
  void onClose() {}

  @override
  void onInit() {
    log('This is on Store screen ==> ${SessionManager.getUserToken()}');

    super.onInit();
  }
}
