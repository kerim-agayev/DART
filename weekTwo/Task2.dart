import 'dart:io';

//Task - daxil edilen ededleri - kicikden boyuye sirala
void main(List<String> args) {


  void bubbleSort(List<int> list) {
    var yerDegistirme = true;
    while (yerDegistirme) {
      yerDegistirme = false;
      for (var i = 0; i < list.length - 1; i++) {
        if (list[i] > list[i + 1]) {
          var temp = list[i];
          list[i] = list[i + 1];
          list[i + 1] = temp;
          yerDegistirme = true;
        }

        
      }
    }
  }

  List<int> numlist = [4, 76, 23, 0, 66, 54, 23];
  bubbleSort(numlist);
  print(numlist);
}
