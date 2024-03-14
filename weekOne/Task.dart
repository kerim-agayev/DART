void main(List<String> args) {
  List<int> num = [1, 2, 3, 4, 5];
  List<String> cities = ['masalli', 'qebele', 'quba', 'naxcivan', 'ordubad'];

  Map<int, String> mymap = {};

  num.map((e) {
    mymap.addAll({e: cities[e - 1]});
  }).toList();

  print(mymap);

   List<int> numtwo = [1, 2, 3, 4, 5];
  Set<String> city = {'masalli', 'qebele', 'quba', 'naxcivan', 'ordubad'};
  Map<int, String> unionThree = numtwo.asMap().map((key, value) => MapEntry(key, city.elementAt(key)));
  print(unionThree);
}
