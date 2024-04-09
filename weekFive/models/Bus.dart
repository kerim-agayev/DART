import 'Vehicle.dart';

class Bus extends Vehicle {
  Bus(
      {required super.color,
      required super.speed,
      required super.numberOfDoors,
      required super.numberOfSeats,
      required super.model,
      required this.weight});

  double weight;
  void ShowAttitude() {
    print("this bus seats $numberOfSeats people");
  }
}
