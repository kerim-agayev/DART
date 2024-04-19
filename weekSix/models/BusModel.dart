import 'ColorsEnum.dart';
import 'VehicleModel.dart';

class BusModel implements VehicleModel{
   BusModel({
    required this.carColor,
    required this.model,
    required this.name,
    required this.speed,
    required this.year,
    required this.id
  });
  @override
  ColorsEnum carColor;

  @override
  String model;

  @override
  String name;

  @override
  double speed;

  @override
  String year;


  @override
  int id;
  
  @override
  void show(int i) {
   print("id:$i : name: ${this.name} year:${this.year}");
  }


}