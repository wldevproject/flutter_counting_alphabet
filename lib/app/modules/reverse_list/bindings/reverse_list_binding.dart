import 'package:get/get.dart';

import '../controllers/reverse_list_controller.dart';

class ReverseListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReverseListController>(
      () => ReverseListController(),
    );
  }
}
