import 'package:get/get.dart';

class MainController extends GetxController {
  var counter = 0.obs;
  List alphabet = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
  ];

  void tambahHitung() {
    if (counter < alphabet.length) counter++;
  }

  void kurangHitung() {
    if (counter > 0) counter--;
  }
}
