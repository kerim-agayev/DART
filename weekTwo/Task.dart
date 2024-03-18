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
      a = int.parse(element);
    } else if (b == null) {
      b = int.parse(element);
    } else if (c == null) {
      c = int.parse(element);
    } else if (d == null) {
      d = int.parse(element);
    }
  });
  numList.sort((a, b) => int.parse(a) - int.parse(b));
  print('en boyuk number: ${numList[numList.length-1]}');
  print('en kicik number: ${numList[0]}');
  print('a:$a');
  print('b:$b');
  print('c:$c');
  print('d:$d');
}
