class Vehicle {
  String color;
  double speed;
  int numberOfDoors;
  int numberOfSeats;
  String model;

  Vehicle(
      {required this.color,
      required this.model,
      required this.speed,
      required this.numberOfDoors,
      required this.numberOfSeats});

  void ShowInfo() {
    print(''' 
    color:$color
    model:$model
    speed:$speed
    numberOfDoors:$numberOfDoors
    numberOfSeats: $numberOfSeats
    ''');
  }
}
