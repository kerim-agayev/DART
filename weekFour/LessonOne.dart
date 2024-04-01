void main(List<String> args) {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var i = 0; i < list.length; i++) {
    print('$i. element: ${list[i]}');
  }
//forEach - adsiz funksiya alir
  list.forEach((element) {
    print(element);
  });
//?forEach - arrow funksiya alir
  list.forEach((element) => print(element));
  //?extension
  String a = "40";
  int b = int.parse(a);
  int c = a.toInt((a));
    int d = a.toIntTwo();
  print(c.runtimeType);
    print(d.runtimeType);

//?records
}

//!!! parmetr olaraq function alan funksiya

//?extension name on Type
extension on String {
  int toInt(String a) {
    return int.parse(a);
  }
   int toIntTwo() {
    return int.parse(this);
  }
}
