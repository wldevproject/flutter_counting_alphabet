import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/baterai_map_controller.dart';

class BateraiMapView extends GetView<BateraiMapController> {
  const BateraiMapView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BateraiMapView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BateraiMapView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
