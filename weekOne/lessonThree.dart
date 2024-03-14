void main() {
  //map - var, const, final - qebul etmir, cunki bunlar data type deyil.
  //mymap.keys and mymap.values - iterable type sayilir.
  Map<int, String> mymap = {
    1: "kerim", //ikisi birlikde MapEntry type sayilir.
    2: "suat"
  };
  // If - Else
  // 1000 azn - 10% azaltsin
  // 500 azn - 5% azaltsin
  // 100  azn - 5% artirsin
  // 0 azn - 10 % artirsin
  int balans = 99;

  if (balans >= 1000) {
    print('10% azaltsin');
  } else if (balans >= 500 && balans < 1000) {
    print('5% azaltsin');
  } else if (balans >= 100 && balans < 500) {
    print('5% artirsin');
  } else {
    print('10% artirsin');
  }

  // tostringasfixed
  // floor, ceil, truncate, round
  double a = 55.4444444;
  print('a.ceilToDouble():${a.ceilToDouble()}');
  print('a.floorToDouble.${a.floorToDouble()}');
  print('string:${double.parse(a.toStringAsFixed(2)).runtimeType}');
  print('a.floor() : ${a.floor()}');
  print('a.ceil() : ${a.ceil()}');
  print('a.truncate() : ${a.truncate()}');
  print('a.round() : ${a.round()}');
  print('a.roundToDouble() : ${a.roundToDouble()}');
  print('*' * 30);

  //task 1
  double myMoney = 2200;
  double sum = 0;
  double sumtwo = 0;
  Set<String> products = {'tv', 'mobil', 'soyuducu'};
  Map<String, double> market = {
    'tv': 1000,
    'comp': 5000,
    'car': 10000,
    'qulaqciq': 50,
    'ayaqqabi': 100,
    'koynek': 50,
    'mobil': 300,
    'soyuducu': 800
  };
  //method 1
  products.toList().map((e) {
    market.map((key, value) {
      if (e == key) {
        sum = sum + value;
      }

      return MapEntry(key, value);
    });
  }).toList();
  if (sum > myMoney) {
    print('budce azdir');
  } else {
    print('alis veris ugurla tamamlandi');
  }
  print("sum:$sum");
  //method 2 - foreach
  products.forEach((element) {
    market.forEach((key, value) {
      if (element == key) {
        sumtwo = sumtwo + value;
      }
    });
  });

  print("sumtwo:$sumtwo");
  //! Mapde ['key'] - yazanda - value qaytarir.
  print(market['tv']);
}
