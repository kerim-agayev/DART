void main() {
  Car car = Car(brand: "brand", model: "model", year: 1999);
  print("car.year:${car.year}"); //object level datas
  //print("car.engineCount:${car.engineCount}");//staticsiz
  //? class level melumatlar - staticli
  print("static engine count:${Car.engineCount}");
  Car.engineCount = 5; //umumi burda deyisdirmek olur.
  car.changeStaticValue = 1000; //setter
  print("static engine count:${Car.engineCount}");
}

class Car {
  String brand;
  String model;
  int year;
  //int engineCount = 1;
  static int engineCount = 1;
  Car({
    required this.brand,
    required this.model,
    required this.year,
  });

  set changeStaticValue(int value) {
    engineCount = value;
  }
}
//! setter ile obyekt seviyyesinde static variable' a deyer vermek olur.