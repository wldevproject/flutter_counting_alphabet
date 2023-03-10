import 'package:get/get.dart';

import '../controllers/sliver_test_controller.dart';

class SliverTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SliverTestController>(
      () => SliverTestController(),
    );
  }
}
