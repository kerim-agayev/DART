void main() {
//? final and const

  const String name = "cavid";
  //? name = "deyisdi"; const - deyismir sonradan.
  final String name2 = "cavid2";
  //? name2 = "deyisdi"; final - deyismir sonradan.
  String name3 = "cavid 3";
  name3 = "Ramin";
  //?const-da deyeri yazdigimiz vaxt teyin edirik, finalda ise variable yaradib, sonradan deyer vere bilerik, ikisindede deyer verenden sonra deyisdirmek olmur
  //!var, finalz const - deyer verdiyimizde type teyin olunur, mes string
  final username;
  //? sadece bu halda deyer vermiyende dynamic olur
  username = "messi"; //!bu haldada dynamic olur
  print("*" * 30);
  //--------------------------------
  //! break and continue;
  var a = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  for (var i = 0; i < a.length; i++) {
    print(a[i]);
    if (a[i] == 4) {
      break; //dovru dayandirir
    }
  }
  print("*" * 30);
  //swith case ile for icindeki break, continue ferqi
  //--------------------------------
  //? try and catch

  try {
    String number = "Otuz";
    int num = int.parse(number);
  } catch (e) {
    print("error: ${e}");
  }
  String ad = "name";
  print(ad);
}
