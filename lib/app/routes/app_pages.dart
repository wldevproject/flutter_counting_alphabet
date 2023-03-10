import 'package:get/get.dart';

import '../modules/baterai_map/bindings/baterai_map_binding.dart';
import '../modules/baterai_map/views/baterai_map_view.dart';
import '../modules/grid_list/bindings/grid_list_binding.dart';
import '../modules/grid_list/views/grid_list_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/layout_builder/bindings/layout_builder_binding.dart';
import '../modules/layout_builder/views/layout_builder_view.dart';
import '../modules/sliver_test/bindings/sliver_test_binding.dart';
import '../modules/sliver_test/views/sliver_test_view.dart';

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
    GetPage(
      name: _Paths.LAYOUT_BUILDER,
      page: () => LayoutBuilderView(),
      binding: LayoutBuilderBinding(),
    ),
    GetPage(
      name: _Paths.SLIVER_TEST,
      page: () => const SliverTestView(),
      binding: SliverTestBinding(),
    ),
    GetPage(
      name: _Paths.BATERAI_MAP,
      page: () => const BateraiMapView(),
      binding: BateraiMapBinding(),
    ),
  ];
}
