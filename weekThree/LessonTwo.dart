void main(List<String> args) {
  List<int> mixednumbers = [1, 5, 34, 67, 86, 3, 2, 455, 65, 76];
  //List<int> or var ile yazmisiqsa - numbers.isOdd gelir, List yazmisiqsa .isEven gelmir
  var odd = [];
  var even = [];

  for (var i = 0; i < mixednumbers.length; i++) {
    if (mixednumbers[i].isEven) {
      even.add(mixednumbers[i]);
    } else {
      odd.add(mixednumbers[i]);
    }
  }
  for (var element in mixednumbers) {
    //? dynamicde iseven - isodd yoxdur
    //!element.isEven yoxdur. - var element
    //! element.isEven olur - List<int> or int or data type
  }

  print("odd:$odd");
  print("even:$even");
  print("*" * 30);
  //?where
  print(mixednumbers.where((element) => element % 2 == 0));
  var result = mixednumbers.firstWhere((element) => element % 2 == 0);

  print("element:${mixednumbers.indexOf(result)}");

  var result2 = mixednumbers.indexWhere((element) => element % 2 == 0);
  print("indexWhere:$result2");
  //!indexof ve indexwhere ferqi
  print("*" * 30);
  //?putifabsent - index bosdusa deyer yerlesdirir, doludursa deyer yerlesdirmir
  Map<int, String> map1 = {1: "ad1", 2: "ad2", 3: "ad3"};

  map1.putIfAbsent(4, () => "yeni elave edildi");
  print("map1:$map1");
  //sort
  List<int> numberList = [
    1,
    3,
    4,
    5,
    6,
    4242,
    433,
    342,
    34,
    22,
    566,
    4422,
    22,
    2
  ];
  //numberList.sort((a, b) => a - b);
  //numberList.sort((a, b) => b-a);
  numberList.sort((a, b) => b.compareTo(a));
  print(numberList);
  print("*" * 30);
  //! tapsiriq - warning
  List<int> numberstapsiriq = [1, 3, 10, 7, 2, 9, 5, 4, 6];

  numberstapsiriq.any((element) {
    if (element.isEven) {
      print("$element is even");
    } else {
      print("$element is odd");
    }
    return false;
  });

  print("*" * 30);
  // is operatoru
  var xz = true;
  var m;
  if (m is! int) {}
  print(!xz);

  
}
