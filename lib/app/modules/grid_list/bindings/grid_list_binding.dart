import 'package:get/get.dart';

import '../controllers/grid_list_controller.dart';

class GridListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridListController>(
      () => GridListController(),
    );
  }
}
