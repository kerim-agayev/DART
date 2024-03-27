import 'dart:io';

int num1 = 0;
int num2 = 1;
List<int> numbers = [];
void main(List<String> args) {
  //Functions dersi
  //Task 1
  //istifadeciden bir eded alin, aldiginiz eded deyilse try ... catch istifade edek.
  // alinan eded 0-100 olmalidir. error handling
  // 0-dan alinan edede qeder olan fibonacci ededlerini liste daxil edin
  // daha sonra sum tapin.
  // listi qarisdirin. qarisdirdiqdan sonra listi boyukden kiciye siralayin.
  // aparilacaq her emeliyyati funksiyalara ayirin
  print('bir eded daxil edin, cixis ucun Exit yazin');

  functionFibonacci();
}

functionFibonacci() {
  while (true) {
    try {
      var input = int.parse(stdin.readLineSync().toString());
      if (input == "Exit" && input == "exit") {
        return;
      }

//fibonacci - 0 1 1 2 3 5 8 13 21 34 55 89
      Fib(input);

      // sum
      int sum = numbers.reduce((value, element) => value + element);
      print("yazilan edede qeder olan fibonacci ededlerinin cemi:$sum");
      numbers.shuffle();
      print("yerleri deyisdirilmis list:$numbers");

      functionBubbleSort(numbers, numbers.length);
      print("bubbleSort:$numbers");
      print(
          'davam edib yeni bir eded daxil ede bilersiz, cixis ucun Exit yazin');
    } catch (e) {
      print("reqem daxil etmediniz, xahis edirik reqem daxil edin");
    }
  }
}

List<int> Fib(int input) {
  //fibonacci - 0 1 1 2 3 5 8 13 21 34 55 89
  int num3 = num1 + num2;
  num1 = num2;
  num2 = num3;

  if (num3 < input) {
    if (!(input == 0)) {
      Fib(input - 1);
    }
  }

  numbers.add(num3);
  return numbers;
}

functionBubbleSort(List<int> list, int number) {
//[1, 13, 3, 55, 34, 5, 21, 2, 8]
  int i, j, temp;
  bool swapped;
  for (i = 0; i < number - 1; i++) {
    swapped = false;
    for (j = 0; j < number - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        // Swap arr[j] and arr[j+1]
        temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
        swapped = true;
      }
    }

    // If no two elements were
    // swapped by inner loop, then break
    if (swapped == false) break;
  }
}
