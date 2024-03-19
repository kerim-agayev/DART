import 'dart:io';
//daxil edilen ededlerden min ve max tap.
void main() {
  int? a;
  int? b;
  int? c;
  int? d;
  int max = 0;
  int? min = 0; // nullable olmasa idi, 0 cavabi ala bilmeyecekdik, minimumda

  String input = stdin.readLineSync()!;
  List<String> numList = input.split(',');
  numList.forEach((element) {
    print('element: $element');
    if (a == null) {
      a = int.parse(element);
    } else if (b == null) {
      b = int.parse(element);
    } else if (c == null) {
      c = int.parse(element);
    } else if (d == null) {
      d = int.parse(element);
    }
    if (min == null) {
      print('min: $min');
      min = int.parse(element);
    }
    if (int.parse(element) > max) {
      print('max: $max');
      max = int.parse(element);
    } else if (int.parse(element) < min!) {
      print('min: $min');
      min = int.parse(element);
    }
  });
  print('max: $max');
  print('min: $min');
}
