void main(List<String> args) {
  List<double> list = [
    4.97,
    10,
    555,
    90,
    4.98,
    50,
    32,
    45,
    3000,
    5,
    15,
    4.99,
    5,
    4.92,
    4.93
  ];
  double max = 0;
  double min = list[0];
  double temp = 0;
  for (var i = 0; i < list.length; i++) {
    //? list max value;
    if (list[i] > max) {
      max = list[i];
    }
    //? list min value;
    temp = list[i];
    if (min > temp) {
      min = temp;
    }
  }

  print("max: $max");
  print("min: $min");
}

// [10, 555,90, 4.98, 50, 32, 45, 3000,5, 15, 4.99, 5 ];

// 10 < 555 ?  min < temp
// 10> 4.98
// 4.98 <50
// 4.98<32
// 4.98<32