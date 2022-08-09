import 'package:get/get.dart';

import '../controllers/oracle_cards_controller.dart';

class OracleCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OracleCardsController>(
      () => OracleCardsController(),
    );
  }
}
