import 'package:get/get.dart';

import '../controllers/karmic_relationships_controller.dart';

class KarmicRelationshipsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KarmicRelationshipsController>(
      () => KarmicRelationshipsController(),
    );
  }
}
