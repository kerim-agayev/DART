void main(List<String> args) {
  //! Set and Map movzulari.
  //!Set unikal elementler ucun, tekrarlanan elementolmaz
  //! Setde index mentiqi yoxdur - bunun UCUN toList() - etmek lazimdir
  List<int> numberslist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 1];
  Set numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 1};
  Set numberstwo = {1, 2, 3, 4, 56, 43, 87, 23};
  print('numbers.elementAt(0):${numbers.elementAt(0)}');
  print('numberslist: $numberslist');
  print('numbers : $numbers');
  //numbers.addAll({33, 43, 55});
  print(numbers);
  //numbers.addAll([66, 77, 88]);
  print(numbers);
  print('isempty:${numbers.isEmpty}');
  print('isnotempty:${numbers.isNotEmpty}');
  //? difference
  print('difference : ${numbers.difference(numberstwo)}');
  //? intersection - kesisme noqtesi
  print('intersection: ${numbers.intersection(numberstwo)}');
  //? numberthree yaratmaq and union
  //! Set numbersthree = numbers.addAll(elements) - error verecek, cunki addAll void verir
  //!union
  Set numberfour = numbers.union(numberstwo);
  print('numberfour: $numberfour');

  // print(numbers + numberslist); error verecek.
  //! Set<int>, Set<String>, Set<dynamic>
  //? toSet
  print(numbers
      .toSet()); // listde tekrarlanan elementler varsa tekrarlananlar silinecek
  //toSet().toList();
  //---------------------------
  //Map - key and value<dynamic, dynamic>
  //! Maplerde keyler - Setlerdeki kimi tekrarlanmir, unique olur.
  //! key tekrarlananda yuxaridan asagi oxuyur deye value sonuncu deyeri qebul edir.
  Map<int, String> user = {1: 'Perviz', 2: "Ali", 3: 'Kerim'};

  Map<String, String> usertwo = {'1': 'Perviz', '2': "Ali", '3': 'Kerim'};
  Map<int, String> userthree = {
    1: 'Perviz',
    2: "Ali",
    3: 'Kerim',
    1: 'Deyisdi'
  };
  print('user: $user');
  print('tekrarlanan key: $userthree');

  //? Map metodlari - addAll
  user.addAll({4: 'Hesen', 5: 'Huseyn'});
  print('addAll: $user');
  //!remove - keyi silir

  // key and value
  print(': ${user.keys}'); //iterable qaytarir
  print('user.keys.toList()[0]:${user.keys.toList()[0]}');
  print('user.values:${user.values}'); //iterable
  print('user.values.toList()[1]: ${user.values.toList()[1]}');
  // list - [], set and map -{}, iterable - (mapentry)
  //iterable
  print('iterable:${user.entries}');
  //containsKey, containsValue
  //!reduce
  print('reduce: ${user.keys.reduce((value, element) => value + element)}');

  //tostringasfixed()
  Map<int, double> product = {
    1: 555.3,
    2: 23.45,
    3: 235.567,
  };

  print(
      'tostringasfixed: product.values.reduce((value, element) => value + element): ${product.values.reduce((value, element) => value + element).toStringAsFixed(2)}');

  // task 1
  List<String> names = [
    'baki',
    'sumqayit',
    'lenkeran',
    'salyan',
    'baki',
    'saatli',
    'lenkeran',
    'lenkeran',
    'qebele',
    'qebele'
  ];
  //unikal
  //print("unikal:${names.toSet().toList()}");
  //!----------------------------------
  //tekrarlanan
  //method 1 - where

  // Set<String> repeatedNames = names.where((name) => names.where((otherName) => otherName == name).length > 1

  // ).toSet();

  // repeatedNames.forEach((name) => print('repeatname :$name'));
  //!method 3 - for icinde for

  // List<String> repeatedNames = [];

  // for (int i = 0; i < names.length; i++) {
  //   for (int j = i + 1; j < names.length; j++) {
  //     if (names[i] == names[j]) {
  //       print('i:${names[i]} and j: ${names[j]}');
  //       if (!repeatedNames.contains(names[i])) {
  //         repeatedNames.add(names[i]);
  //       }
  //     }
  //   }
  // }

  // for (String name in repeatedNames) {
  //   print('repeatname: $name');
  // }
  //!method 3 - map metodu
  //names.map((e) => print('cities:$e')).toList();
  //!method 4

  Set<String> repeatedNames = names.where((String name) {
    int count = 0;
    for (String otherName in names) {
      if (name == otherName) {
        count++;
      }
    }
    return count > 1;
  }).toSet();

  //repeatedNames.forEach((name) => print(name));
  //task2 - bir list-icinde tam ededler olsun, bir set yaradin icinde seher adlari olsun tekrarlanmayan. bir map yaradin. key listin 0-ci indeksi, valuesusetin 0-ci indeksi

  List<int> num = [1, 2, 3, 4, 5];
  Set<String> cities = {'masalli', "qebele", "quba", 'naxcivan', 'ordubad'};
  //method 1
  Map<int, String> union = {
    num[0]: cities.toList()[0],
    num[1]: cities.toList()[1],
    num[2]: cities.toList()[2],
    num[3]: cities.toList()[3],
    num[4]: cities.toList()[4],
  };
  //method 2 - for
  Map<int, String> uniontwo = {};

  for (var i = 0; i < 5; i++) {
    uniontwo.addAll({num[i]: cities.elementAt(i)});
  }

  //   print('union:$union');
  //   print('uniontwo:$uniontwo');
//!method 3

}
