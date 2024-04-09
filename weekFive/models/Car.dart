import 'Vehicle.dart';

class Car extends Vehicle {
  Car(
      {required super.color,
      required super.speed,
      required super.numberOfDoors,
      required super.numberOfSeats,
      required super.model,
      required this.maxSpeed,
      required this.isElectric,});

  double maxSpeed;
  bool isElectric;
  void ShowAttitude() {
    isElectric
        ? print("$this {model} runs on electricity")
        : print("$this {model} runs on gazoline");
  }
}
