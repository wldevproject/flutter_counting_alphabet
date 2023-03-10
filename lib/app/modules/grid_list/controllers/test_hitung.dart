var list = Iterable<int>.generate(35).toList();
int chunkSize = 4;

void main() {
  print(list);
  chunk(list, chunkSize);
}

List chunk(List list, int chunkSize) {
  List chunks = [];
  List chunks1 = [];
  bool isReversed = true;
  int len = list.length;
  for (var i = 0; i < len; i += chunkSize) {
    if(isReversed){
      chunks.addAll(list.skip(i).take(chunkSize).toList().reversed);
      chunks1.add(list.skip(i).take(chunkSize).toList().reversed.toList());
      isReversed = false;
    }else{
      chunks.addAll(list.skip(i).take(chunkSize));
      chunks1.add(list.skip(i).take(chunkSize).toList());
      isReversed = true;
    }
  }
  print(chunks);
  print(chunks1);
  return chunks;
}
