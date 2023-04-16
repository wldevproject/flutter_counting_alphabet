import 'package:get/get.dart';

import '../modules/grid_list/bindings/grid_list_binding.dart';
import '../modules/grid_list/views/grid_list_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GRID_LIST,
      page: () => GridListView(),
      binding: GridListBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
