void main(List<String> args) {
  //? type of functions
  sayMyName();
  print("*" * 30);
  printName("Kerim");
  print("*" * 30);
  print(printAge()); //?
  print("*" * 30);
  print(printNumber(5.5));
  print("*" * 30);
  //?positional
  var a = 5;
  var b = 6;
  findMinus(a, b);
  findMinus(b, a);
  //findMinusTwo();
  //? optional parametr
  findMinusThree();
  print("*" * 30);
//? optional and positional
  findSum(10);

  print("*" * 30);
//? named arguments
  hasiliTap(a: 5, b: 10, c: 50);
  //?named and default
  hasiliTapTwo();
  //?required named parametrs
  hasiliTapThree(a: 5, b: 10, c: 60);
}
//*****************************************

//No arguments and no return type
void sayMyName() {
  var name = "walter white";
  print(name);
}

// With arguments and no return type
void printName(String name) {
  print(name);
}
// No arguments and return type

int printAge() {
  var age = 10;
  return 10;
}

// With arguments and with return type
double printNumber(double a) {
  return a;
}

//? positional parametr

void findMinus(int x, int y) {
  print(x - y);
}

void findMinusTwo(int? x, int? y) {
  print(x! - y!);
}

//?optional parametr - array[] - default deyer
void findMinusThree([int x = 100, int y = 5]) {
  print(x - y);
}

//? optional and positional
findSum(int a, [int b = 1000, int c = 100]) {
  print(a + b + c);
}

//? optional named arguments

hasiliTap({int? a, int? b, int? c}) {
  print(a! * b! * c!);
}

//default and optional
hasiliTapTwo({int a = 5, int b = 5, int c = 5}) {
  print(a * b * c);
}

//?required named parametrs
hasiliTapThree({required int a, required int b, required int c}) {
  print(a * b * c);
}
