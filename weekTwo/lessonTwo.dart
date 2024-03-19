void main(List<String> args) {
  //? for...loop;
  var list = [
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
    'a',
  ];

  // for (var i = 0; i < 8; i--) {
  //print(list[i]);//!range error
  // }

//for..in
  for (var element in list) {
    print(element);
  }
  //while
  var i = 0;
  while (i < list.length) {
    //i++; - burda yazilanda range rror verir.
    print(list[i]);
    i++;
  }
  print('*' * 30);
  //task domino
  int? side1;
  int? side2;

  for (var i = 0; i < 7; i++) {

    for (var j = i; j < 7; j++) {
        side1 = i;
      side2 = j;
      print('${side1.toString()}:${side2.toString()}');
    }
  }
}
