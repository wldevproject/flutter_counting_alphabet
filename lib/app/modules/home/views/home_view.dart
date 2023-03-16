import 'package:ex1_getx_get_api/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Tentukan berapa banyak kotak yang di cetak:',
              ),
              Obx(() => Text(
                    controller.counter.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  )),
              const SizedBox(height: 10),
              Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () => controller.kurangHitung(),
                        child: buildText(text: "-"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    const VerticalDivider(width: 10),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () => controller.tambahHitung(),
                        child: buildText(text: "+"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.cyan,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.GRID_LIST, arguments: {
                          'counter': controller.counter.value,
                          'alphabet': controller.alphabet,
                        }),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: const Text("Cak Hasil")),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.BATERAI_MAP, arguments: {
                      'counter': controller.counter.value,
                      'alphabet': controller.alphabet,
                    }),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: const Text("Baterai Map")),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.LAYOUT_BUILDER),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: const Text("Tes Layar")),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.SLIVER_TEST),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    child: const Text("Test Sliver")),
                const SizedBox(height: 10),
              ])
            ],
          ),
        ),
      ),
    );
  }

  Text buildText({required String text}) =>
      Text(text, style: const TextStyle(fontSize: 20));
}
