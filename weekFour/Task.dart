import "dart:io";
import "dart:math";

List<int> listSort = [];
void main(List<String> args) {
  //input = 5
  //List<double> list =[1.35, 2.16, 3.4, 3.8, 4.76]
// istifadeciden 0-100 arasinda eded alin
// istifadeci 70 daxil etse, listin tipi double olsun
// 0 - 70 e kimi random getsin
// 0-dan inputa qeder random list generate etsin.
  // String input = stdin.readLineSync()!;
  // double number = double.parse(input);
  // Random random = Random();

  // List<double> list = [];

  // for (var i = 0; i < number; i++) {
  //   double randomNumber = random.nextDouble() * number;
  //   randomNumber = double.parse(randomNumber.toStringAsFixed(2));
  //   list.add(randomNumber);
  // }

  // sirala(list);
  // print(listSort);
  var a = [5, 3, 2, 6, 7, 3, 9, 1];
  sirala(a);
  print(listSort);
  print(a);
}

int one = 0;
int two = 1;

void sirala(List<int> list) {
  print("two:$two");
  var temp;
  if (list[one] > list[two]) {
    temp = list[one];
    list[one] = list[two];
    list[two] = temp;
    listSort.add(list[one]);
  } else {
    listSort.add(list[two]);
  }

  one++;
  two++;

  if (two > list.length - 1) {
    return;
  } else {
    sirala(list);
  }
}
