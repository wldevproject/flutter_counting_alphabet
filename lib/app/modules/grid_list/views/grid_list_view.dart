import 'dart:math';

import 'package:ex1_getx_get_api/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/grid_list_controller.dart';

class GridListView extends GetView<GridListController> {
  // final HomeController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridListView'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              scrollDirection: Axis.horizontal,
              reverse: true,
              padding: const EdgeInsets.all(16),
              childAspectRatio: 1,
              children: List.generate(
                controller.counter,
                (index) => Card(
                  color: Colors.primaries[Random().nextInt(Colors.primaries.length)][Random().nextInt(9) * 100],
                  child: Center(
                      child: Text(
                    "${controller.numeric[index]}",
                    style: const TextStyle(color: Colors.black38, fontSize: 20),
                  )),
                ),
              ))),
    );
  }
}
