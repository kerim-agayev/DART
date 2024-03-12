// dynamic - type null safety pozur
//List
void main(List<String> args) {
  List studentList = ['perviz', 'kerim', 'kerim'];
  // print(studentList.runtimeType);
  List ages = [30, 26];
  // print(ages.runtimeType);
  //type - List<dynamic>
  List works = [true, 1, 'issiz', DateTime.now(), ages];
  // print(works);
  // print(works.runtimeType);
  print({ages, studentList});
  studentList[1] = 'ali';
  // studentList[2] = 'ali'; - bu error verecek, cunki bu element yoxdur.
  print(studentList);
  studentList.add('elsen');
  //addAll - iterable-array isteyir.

  studentList.addAll(['huseyn', 'remzi']);
  print(studentList);
  //var type safety pozmur - string type alacaq asagida List<String>
  var user = ['eli', 'mehemmed'];
  studentList.addAll(user);
  print(studentList);
  //remove
  studentList.remove('mehemmed');

  print(studentList);

  // studentList.clear();
  //removeAt
  studentList.removeAt(0);

  print(studentList);
  //remove eyni element
  studentList.remove('kerim'); //ilk tapdigini silir
  print(studentList);
  //insert - yazilan indekse elave element daxil edir.
  studentList.insert(0, 'ali deyisdi');
  print(studentList);
  //contains
  print(studentList.contains('remzi'));
  print(studentList.contains('remzitwo'));

  print('*' * 30);
  //List yaradilma formalari
  List<int> numberList = List.empty(growable: true);
  numberList.add(4);
  print(numberList);
  List<int> numberListtwo = List.filled(5, 5);
  numberList.add(4);
  print(numberListtwo);

  List<List<String>> mylist = [
    ['ali, huseyn'],
    ['eli', 'kerim']
  ];
  print(mylist[0]);
  //lists
  //List<bool> isStudent = [true, false, true, true, false];
  List<String> students = ['eldar', 'elmar', 'orxan', 'huseyn'];

  //List<int> wages =[400, 500, 300, 200];
  //List yaradilma metodlari - generate
  List<String> myList = List.generate(5, (index) => 'kerim');
  print('-' * 30);
  print('myList: $myList');
  //
  //! practice 1: warning
  //!
  //! Dart dilinde, split fonksiyonundan sonra shuffle metodunu kullanamayız çünkü split fonksiyonu bir List<String> döndürür. shuffle metodu ise sadece List tipindeki nesneler üzerinde kullanılabilir.

  String sentence = "Hello my name is Perviz";
  List<String> sentenceSplit = sentence.split(' '); //.shuffle();
  //shuffle - geriye void dondurur.

  sentenceSplit.shuffle();
  print(sentenceSplit.join(" "));
  // !
  //practice 2
  String sentencetwo = "Hello my name is Perviz";
  var sentenceReverse = sentencetwo.split(' ');
  print(sentenceReverse.reversed.join(" "));
  print('sum ');
  //task 3
  List<int> numListOne = [95, 83, 17, 46];
  List<int> numListTwo = [5, 17, 83, 54];

  //List<int> sum = numListOne + numListTwo;
  //metod 1
  var a = numListOne[0] + numListTwo[0];
  var b = numListOne[1] + numListTwo[1];
  var c = numListOne[2] + numListTwo[2];
  var d = numListOne[3] + numListTwo[3];
  List<int> sumTwo = [a, b, c, d];
  print(sumTwo);
  //metod 2
  List<int> sumThree = List.empty(growable: true);
  for (var i = 0; i < numListOne.length; i++) {
    sumThree.add(numListOne[i] + numListTwo[i]);
  }
  //method 3
  List<int> sumFour = List.empty(growable: true);
  sumFour.addAll([
    numListOne[0] + numListTwo[0],
    numListOne[1] + numListTwo[1],
    numListOne[2] + numListTwo[2],
    numListOne[3] + numListTwo[3]
  ]);

  print('sumthree :$sumThree');
  print('sumfour :$sumFour');

  //task 4
  List<int> newlist = [1, 2, 3, 4];
  List<int> newlisttwo = [1, 2, 3, 4];
  List<int> empty = [];
  void sumNum(int index) {
    empty.add(newlist[index] + newlisttwo[index]);
  }

  sumNum(3);
  print('empty : $empty');




  

}
