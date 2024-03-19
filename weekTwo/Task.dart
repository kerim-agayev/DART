import 'dart:io';

void main(List<String> args) {
  int? a;
  int? b;
  int? c;
  int? d;
  // List mymap = [a, b, c, d];
  // int count = 0;
  // print('mymap - 0 : ${mymap[0]}');

  // print('reqem daxil edin');
  // while (count < 4) {
  //   mymap[count] =int.parse(stdin.readLineSync().toString());
  //   count++;
  // }
  // print('numbers:$mymap');

//--------------------------
  String input = stdin.readLineSync()!;
  List<String> numList = input.split(',');
  numList.forEach((element) {
    print("element:$element");
    //! yeniden yoxla bunu. ferqli bir mentiqle isleyir
    if (a == null) {
      print('1.');
      a = int.parse(element);
    } else if (b == null) {
      print('2.');
      b = int.parse(element);
    } else if (c == null) {
      print('3.');
      c = int.parse(element);
    } else if (d == null) {
      print('4.');
      d = int.parse(element);
    }
  });

  print('a:$a');
  print('b:$b');
  print('c:$c');
  print('d:$d');
}
