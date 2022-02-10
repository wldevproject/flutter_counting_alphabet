import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_view_model.dart';
import 'grid_list_view.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final _viewModel = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tentukan berapa banyak kotak yang di cetak:',
            ),
            Obx(() => Text(
                  _viewModel.counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                )),
            const SizedBox(height: 10),
            Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () => _viewModel.kurangHitung(),
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
                      onPressed: () => _viewModel.tambahHitung(),
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
                  onPressed: () => Get.to(const GridListDemo(),
                      transition: Transition.rightToLeft),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  child: const Text("Cak Hasil"))
            ])
          ],
        ),
      ),
    );
  }

  Text buildText({required String text}) =>
      Text(text, style: const TextStyle(fontSize: 20));
}
