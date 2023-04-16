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
      body: const Center(
        child: Text(
          'ReverseListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
