//! Maşın tipləri VehicleModel sinfindən implement edən fərqli siniflər olmalıdır. (BusModel, TruckModel və CarModel)

import 'ColorsEnum.dart';

abstract class VehicleModel {
  String name;
  double speed;
  ColorsEnum carColor;
  String model;
  String year;
  int id;

  VehicleModel({
    required this.carColor,
    required this.model,
    required this.name,
    required this.speed,
    required this.year,
    required this.id
  });
  void show(int i){
        print("id:$i : name: ${this.name} year:${this.year}");
  }
}
