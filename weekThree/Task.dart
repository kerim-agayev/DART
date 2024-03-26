import "dart:io";

void main(List<String> args) {
  // task1:
  // istifadeciden 1 eded reqem al. istifadeci enteri basan kimi bundan 1 evvelki, 1 sonraki reqem cap olunsun

  // print('1 eded daxil edin, cixis ucut Exit yazin');

  // String input = stdin.readLineSync()!;

  // var splittedInput = input.split('');
  // var check =
  //     splittedInput.any((element) => element.contains(RegExp(r'[a-zA-Z]')));

  // if (check) {
  //    print('xahis edirik reqem daxil edin');
  // } else {
  //    int num1 = int.parse(input) + 1;
  //   int num2 = int.parse(input) - 1;
  //   print('num1:$num1 and num2:$num2');
  // }
//? hell yolu 2: try and catch;

  bool check = true;

  while (check) {
    print('1 eded daxil edin, cixis ucut Exit yazin');

    String input = stdin.readLineSync()!;
    if (input == "Exit" || input == "exit") {
      break;
    }
    try {
      int num3 = int.parse(input) + 1;
      int num4 = int.parse(input) - 1;
      print('num3:$num3 and num4:$num4');
    } catch (e) {
      print("xahis edirik reqem daxil edin");
    }
  }
}
