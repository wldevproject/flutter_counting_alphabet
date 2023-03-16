import 'package:get/get.dart';

class BateraiMapController extends GetxController {

  int counter = 0;
  var alphabet = [];
  var numeric1 = [].obs;
  var numeric2 = [].obs;
  int chunkSize = 4;
  var isReverses = [].obs;

  @override
  void onInit() {
    counter = Get.arguments['counter'];
    alphabet = Get.arguments['alphabet'];
    // numeric1.value = chunkModel1(counter, chunkSize);
    numeric2.value = chunkModel2(counter, chunkSize);
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
        chunks.add(list.skip(i).take(chunkSize).toList());
        isReverses.add(false);
        isReversed = false;
      }else{
        chunks.add(list.skip(i).take(chunkSize).toList().reversed.toList());
        isReverses.add(true);
        isReversed = true;
      }
    }

    print(chunks);
    print(isReverses);
    return chunks;
  }
}
