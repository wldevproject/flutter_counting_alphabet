import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reverse_list_controller.dart';

class ReverseListView extends GetView<ReverseListController> {
  const ReverseListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReverseListView'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SizedBox(
        width: 400,
        height: 320,
        child: buildListViewX(),
      )),
    );
  }

  buildGridView() {
    return GridView.count(
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
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                [Random().nextInt(9) * 100],
            child: Center(
                child: Text(
              "${controller.numeric1[index]}",
              style: const TextStyle(color: Colors.black38, fontSize: 20),
            )),
          ),
        ));
  }

  buildListViewX() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: controller.numeric2.length,
      scrollDirection: Axis.horizontal,
      reverse: true,
      itemBuilder: (context, position) {
        return Obx(() {
          return SizedBox(
            width: 70,
            height: 70,
            child: buildListViewY(
              controller.numeric2[position],
              controller.isReverses[position],
            ),
          );
        });
      },
    );
  }

  buildColumnY(numeric2, int position) {
    return Container(
        color: Colors.deepOrange,
        child: Column(
          children: [
            Card(child: Container(
              color: Colors.blue,
              height: 70,
              child: Center(child: Text(
                "${numeric2[position]}",
                style: const TextStyle(color: Colors.black38, fontSize: 20),
              )),
            )),
          ],
        ));
  }

  buildListViewY(numeric2, isReversed) {
    return Container(
      alignment: isReversed ? const Alignment(0, 1) : Alignment.bottomCenter,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        reverse: true,
        itemCount: numeric2.length,
        itemBuilder: (context, position) {
          return Card(child: Container(
            color: Colors.redAccent,
            height: 70,
            child: Center(child: Text(
              "${numeric2[position]}",
              style: const TextStyle(color: Colors.black38, fontSize: 20),
            )),
          ));
        },
      ),
    );
  }
}
