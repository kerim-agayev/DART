void main(List<String> args) {
  //! 1.
  //dart strongly typedi
  //js - weakly typedi, js-de stringden sonra int ataya bilersen variable-a

  var result = 5.5;
  print(result);

  // int a=5;
  // a=5.5; - error verer
  //! 2.
  dynamic reqem = 5;
  print(reqem);
  reqem = "messi";
  print(reqem);
  reqem = 5.5;
  print(reqem);
  reqem = true;
  print(reqem);

  //! 3.
  // num = int + double

  num b = 555;
  print(b);
  b = 555.5;
  print(b);
  //! 4.
  //string interpolation


  String name = "Kerim";
  String surname = "Agayev";
  print('menim adim $name soyadim ise $surname');


    //! 5.
    //primitiv data types = var, string, int double, bool
}
