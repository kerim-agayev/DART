import 'Vehicle.dart';

class Truck extends Vehicle {
  Truck(
      {required super.color,
      required super.speed,
      required super.numberOfDoors,
      required super.numberOfSeats,
      required super.model,
      required this.length,
      required this.cargoCapacity});
  double length;
  double cargoCapacity;
  void ShowAttitude() {
    print("The cargo capacity of this truck is up to $cargoCapacity kq.");
  }
}
