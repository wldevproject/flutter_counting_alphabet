import 'package:get/get.dart';

import '../controllers/layout_builder_controller.dart';

class LayoutBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutBuilderController>(
      () => LayoutBuilderController(),
    );
  }
}
