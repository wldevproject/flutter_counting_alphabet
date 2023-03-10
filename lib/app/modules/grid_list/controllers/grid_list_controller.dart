import 'package:get/get.dart';

class GridListController extends GetxController {
  //TODO: Implement GridListController

  int counter = 0;
  var alphabet = [];
  var numeric = [].obs;
  int chunkSize = 4;

  @override
  void onInit() {
    counter = Get.arguments['counter'];
    alphabet = Get.arguments['alphabet'];
    numeric.value = chunkModel1(counter, chunkSize);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  chunkModel1(int count, int chunkSize) {
    List list = Iterable<int>.generate(count).toList();
    List chunks = [];
    bool isReversed = true;
    int len = list.length;

    for (var i = 0; i < len; i += chunkSize) {
      if(isReversed){
        chunks.addAll(list.skip(i).take(chunkSize).toList().reversed);
        isReversed = false;
      }else{
        chunks.addAll(list.skip(i).take(chunkSize));
        isReversed = true;
      }
    }
    return chunks;
  }

  chunkModel2(int count, int chunkSize) {
    List list = Iterable<int>.generate(count).toList();
    List chunks = [];
    bool isReversed = true;
    int len = list.length;

    for (var i = 0; i < len; i += chunkSize) {
      if(isReversed){
        chunks.add(list.skip(i).take(chunkSize).toList().reversed.toList());
        isReversed = false;
      }else{
        chunks.add(list.skip(i).take(chunkSize).toList());
        isReversed = true;
      }
    }
    return chunks;
  }
}
