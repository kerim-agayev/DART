typedef MyRecord = (
  String,
  int,
  double,
  bool,
  DateTime,
  List<String>,
  Map<String, String>,
  Set<int>,
  Null
);
typedef MyRecordTwo = (
  Null nullltwo, {
  String name,
  int age,
  double x,
  bool ismarried,
  DateTime deathtime,
  List<int> list,
  Map<String, String> map,
  Set<int> settwo,
});
void main() {
  //?records -
  Record record = ('John', 25);
  print(record);
  print(
      "record.runtimetype:${record.runtimeType}"); //Runtimetype String and int
  //?
  MyRecord record1 = (
    "Doe",
    30,
    1.85,
    true,
    DateTime(1998),
    ["Dart", "Flutter"], //list
    {"city1": "newyork", "city2": "baku"}, //map
    {14, 25, 30}, //set
    null,
  );
  print("record1:$record1");
  print("record1.1:${record1.$1}");
  print("record1.8.length:${record1.$6.length}");
  print("record1:${record1.runtimeType}");
  //! Record type ozu ile yazdiqda .$6 olmur, var ile yazanda olur.

  var record2 = (
    name: "Doe",
    age: 30,
    1.85,
    true,
    DateTime(1998),
    ["Dart", "Flutter"], //list
    {"city1": "newyork", "city2": "baku"}, //map
    {14, 25, 30}, //set
    null,
  );
  print("record2:$record2");
  MyRecordTwo record3 = (
    null,
    name: "Doe",
    age: 30,
    x: 5.5,
    ismarried: true,
    deathtime: DateTime(2000, 1, 1),
    list: [1, 2, 3],
    map: {"map1": "name1"},
    settwo: {1, 2, 3}
  );
  print("record3:$record3");
  //! recordlar ile function
  print("swap:${swap((4, 5))}");
  //? pattern
  //? destructor
  //? list
  var list = [1, 2, 3, 4, 5, 6, 7];
  var [e, ...re, _, _] = list;
  var [a, b, ...c] = list;
  var [d, ...rest, o] = list;
  print("destructor a: $a, b: $b c: $c d:$d o: $o");
  //? map - ... yoxdur
  var map = {1: "kerim", 2: "ali", 3: "perviz"};

  var {3: m, 2: n} = map;
  print("map destructor: m: $m, n:$n ");
  //? record - ... yoxdur
  var newrecord = (
    "kerim",
    27,
    false,
  );
  var (ad, AGE, ismarried) = newrecord;
  print("record destructor: ad:$ad AGE:$AGE ismarried: $ismarried");

  //?set - seti toList edip sonra destruct etmek olur
}

// swap((int, int) recordFunc) { //type dynamic
//   var (x, y) = recordFunc; //?destructor
//   return (y, x);
// }
(int, int) swap((int, int) recordFunc) {
  var (x, y) = recordFunc; //?destructor
  return (y, x);
}

Record swaptwo((int, int) recordFunc) {
  var (x, y) = recordFunc; //?destructor
  return (y, x);
}
