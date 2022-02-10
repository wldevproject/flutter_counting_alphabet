import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_view_model.dart';

class GridListDemo extends StatelessWidget {
  const GridListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainController _viewModel = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: SafeArea(
          child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              padding: const EdgeInsets.all(16),
              childAspectRatio: 1,
              children: buildList(_viewModel))),
    );
  }

  List<Widget> buildList(MainController _viewModel) {
    final _random = Random();
    return List.generate(
      _viewModel.counter.value,
      (index) => Container(
          child: Card(
        color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
            [_random.nextInt(9) * 100],
        child: Center(
            child: Text(
          "${_viewModel.alphabet[index]}",
          style: const TextStyle(color: Colors.black38, fontSize: 20),
        )),
      )),
    );
  }
}
