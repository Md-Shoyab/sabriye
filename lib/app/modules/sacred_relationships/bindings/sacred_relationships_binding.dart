import 'package:get/get.dart';

import '../controllers/sacred_relationships_controller.dart';

class SacredRelationshipsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SacredRelationshipsController>(
      () => SacredRelationshipsController(),
    );
  }
}
