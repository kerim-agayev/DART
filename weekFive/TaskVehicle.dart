import 'models/Bus.dart';
import 'models/Car.dart';
import 'models/Truck.dart';

void main(List<String> args) {
  //car;
  Car car = Car(
      color: "black",
      speed: 200,
      numberOfDoors: 4,
      numberOfSeats: 4,
      model: "Bmw",
      maxSpeed: 400,
      isElectric: true);
  print("car:");
  car.ShowAttitude();
  car.ShowInfo();
  //bus;
  Bus bus = Bus(
      color: "yellow",
      speed: 150,
      numberOfDoors: 2,
      numberOfSeats: 40,
      model: "BakuBus",
      weight: 2000);
  print("bus:");
  bus.ShowInfo();
  bus.ShowAttitude();
  //truck;
  Truck truck = Truck(
      color: "Blue",
      speed: 200,
      numberOfDoors: 2,
      numberOfSeats: 2,
      model: "Honda ridgeline",
      length: 20,
      cargoCapacity: 5000);
  print("truck:");
  truck.ShowAttitude();
  truck.ShowInfo();
}
