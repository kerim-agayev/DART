typedef OperationType = double Function(double, double);
void main(List<String> args) {
  //? function icinde function cagirmaq
  var a = calculate(1); //type - double Function(double, double)?
  // print(a!(4, 5)); duzdu
  print(a?.call(4, 5));

  print(calculate(3)?.call(20, 40));
}

  OperationType? calculate(int choice) {
  OperationType? operation;

  switch (choice) {
    case 1:
      operation = (p0, p1) => p0 + p1;
    case 2:
      operation = (p0, p1) => p0 - p1;
    case 3:
      operation = (p0, p1) => p0 / p1;
    case 4:
      operation = (p0, p1) => p0 * p1;
    default:
      "Invalid operation";
  }
  return operation;
}
