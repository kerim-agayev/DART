void main() {
//? ternary operator - sert ? netice 1: netice 2;

  String name1 = 'Ruslan';

  String name2 = 'Suat';
  //!
  if (name1 == 'Ruslan' ||
      name2 == 'Ruslan && ' && name2 == 'suat' ||
      name1 == 'Suat') {
    print('Valid');
  } else {
    print('Invalid');
  }
  print('*' * 30);
  //? switch - case:
  int month = 9;
  //?month yoxlanilacaq.
  //?break - siz da istifade oluna bilir. Arxa fonda ozu edir bunu
  switch (month) {
    case 1:
      print('Yanar');
    //break;
    case 2:
    case 3:
    case 4:
      print('Aprel');
    case 5:
      print('May');
    default:
      print('Bu reqem yoxdur');
  }
  // default vermezsek eger - hec bir variant olmadigi halda - hec bir error vermeden, hec bir sey bas vermeyecek, bos gelecek
  //! case 2,3,4 hallarinda eyni cavabi verilmesi
  //! - yeni update-de gelen expression hali
  var x = switch (month) {
1 => 'Yanvar',
2 => ' Fevral',
3 => "Mart",
4 => "Aprel",
>= 5 && <= 12 => 'diger aylar',
_ => "Bele bir ay yoxdur"

  };
  print('switch expression: $x');
}
