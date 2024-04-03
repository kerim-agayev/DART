typedef LangMap = Map<int, String>; //? global;
typedef FuncType = double Function(double);
typedef IntFunction = int Function(int);
void main() {
  //? literals
  10; //! literals, ehemiyyeti olmayan yazilis
  int; //! literals
  [1, 2, 3]; //! literals
  () {
    print("hello some");
  }; //! literals
  fun; //! literals
  var some = fun; //? some - in type' i Function
  some();

  var func = () {
    //main icinde oldugu ucun referans xetasi vermemeyi ucun menimsedirik, Null function
    print("hello func");
  }; //!!!
  func();
  // void funcTwo(){//isn't referenced
  // }
  print("*" * 30);
  //? type def

  Map<int, String> map = {1: "a", 2: "b"};
  Map<int, String> map2 = {1: "a", 2: "b"};
  Map<int, String> map3 = {1: "a", 2: "b"};
  LangMap map4 = {1: "a", 2: "b"};
  LangMap map5 = {1: "a", 2: "b"};
  print(map5);
  print("*" * 30);
  //?
  var functionOne = (int x) {
    //? type int Function oldu, cunki return int edirik //??? qarisdirma geri donusu int deyil, int Function
    int y = 10;
    return x + y;
  };
  functionOne(6);
  int Function(int) functionTwo = (int x) {
    //? type int Function oldu, cunki return int edirik, t
    int y = 10;
    return x + y;
  };
  functionTwo(6);
  Function(int) functionThree = (int x) {
    //? type dynamic
    int y = 10;
    return x + y;
  };
  functionThree(6);
  double Function(double) funcFour = (a) {
    int y = 5;
    return y + a;
  };
  print(funcFour(999.99));
  //! typedef
  FuncType funcFive = (a) {
    int y = 5;
    return y + a;
  };
  print(funcFive(9999.99));
  print(funcFive.call(100000));

  //!
  IntFunction? function11 = (x) {
    int y = 10;
    return x;
  };
  print(function11(90));

  //?
  //! print(function22?(90)); islemir bu
  //! print(function22!(90)); null check isleyir, ama istifade etmek cox duzgun deyil
  print(function22?.call(90)); //! call, null aware qebul etmir - cunki if else'nen qarisdirir.


}

void fun() {
  print("hello fun");
}

//?
IntFunction? function22 = (x) {
  int y = 10;
  return x + y;
};
