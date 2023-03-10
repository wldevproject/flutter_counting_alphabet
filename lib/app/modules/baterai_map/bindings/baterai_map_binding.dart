import 'package:get/get.dart';

import '../controllers/baterai_map_controller.dart';

class BateraiMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BateraiMapController>(
      () => BateraiMapController(),
    );
  }
}
