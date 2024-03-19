import 'dart:io';

void main() {
  int? a;
  int? b;
  int? c;
  int? d;
  int count = 0;

  String input = stdin.readLineSync()!;
  List<String> numList = input.split(',');
  numList.forEach((element) {
   

if (numList.length > count) {
  if (int.parse(numList[count])>int.parse(numList[count+1])) {
  numList[count]  = element;
}
}


    count++;
  }

  );

  print(numList);
}
