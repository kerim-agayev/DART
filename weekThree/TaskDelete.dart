void main(List<String> args) {
  Fib(1500);
  print(numbers);
}

int num1 = 0;
int num2 = 1;
List<int> numbers = [];

Fib(int input) {
  //fibonacci - 0 1 1 2 3 5 8 13 21 34 55 89

  int num3 = num1 + num2;
  num1 = num2;
  num2 = num3;

  if (num3 < input) {
    numbers.add(num3);
    if (!(input == 1)) {
      Fib(input);
    }
  }
}

