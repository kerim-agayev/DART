import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //? password generator
  //? easy, medium, hard;
  //? sifre ve sifrenin encoded tokeni gosterilmelidir;
  print("hansi seviyyede parol duzeldilsin");
  print("easy - 1, medium - 2, hard - 3");
  userInput();
}

void userInput() {
  String input = stdin.readLineSync()!;
  switch (input) {
    case "1":
      CreateEasyPassword();
    case "2":
      CreateMediumPassword();
    case "3":
      CreateHardPassword();
    default:
      print("xahis edirik duzgun secim edin");
      userInput();
  }
}

CreateEasyPassword() {
  List<int> randomNums = List.generate(8, (index) => Random().nextInt(9));
  String password = "";
  randomNums.forEach((element) {
    password += element.toString(); //? passworda listdeki ededleri add edirik
  });
  String encodedPassword =
      base64UrlEncode(utf8.encode(password)); //? stringleri sifreleyir.
  String decodedPassword = utf8.decode(base64Url.decode(encodedPassword));
  print("password: $password");
  print("encodedPassword: $encodedPassword");
  print("decodedPassword: $decodedPassword");
}

CreateMediumPassword() {
  List<String> randomNums =
      List.generate(8, (index) => Random().nextInt(9).toString());

  List<int> randomLetterCodes =
      List.generate(3, (index) => Random().nextInt(33) + 89);
  List<String> passList = [];

  randomNums.forEach((element) {
    passList.add(element);
  });

  randomLetterCodes.forEach((element) {
    passList.add(String.fromCharCode(element));
  });
  passList.shuffle();
  String password = "";
  passList.forEach((element) => password += element);
  String encodedPassword =
      base64UrlEncode(utf8.encode(password)); //? stringleri sifreleyir.
  String decodedPassword = utf8.decode(base64Url.decode(encodedPassword));
  print("password: $password");
  print("encodedPassword: $encodedPassword");
  print("decodedPassword: $decodedPassword");
}

CreateHardPassword() {
//? hard sertleri - diger simvollardan her hansi birini de gotursun
//? 4 simvol,  8 reqem, 4 herf - 2 kicik, 2 boyuk
//? random numbers
  List<String> randomNums =
      List.generate(8, (index) => Random().nextInt(9).toString());
//? random lower numbers
  List<int> randomlowernumber =
      List.generate(2, (index) => Random().nextInt(25) + 97);
  print("randomlowernumber:$randomlowernumber");
  //? random upper numbers
  List<int> randomuppernumbers =
      List.generate(2, (index) => Random().nextInt(25) + 65);
  print("randomuppernumbers:$randomuppernumbers");
  //? symbols - 33-47, 58-64
  List<int> randomLetterSymbols =
      List.generate(4, (index) => Random().nextInt(14) + 33);
  print("randomlettersymbols:$randomLetterSymbols");
  List<String> passList = [];

  randomNums.forEach((element) {
    passList.add(element);
  });

  randomlowernumber.forEach((element) {
    passList.add(String.fromCharCode(element));
  });
  randomuppernumbers.forEach((element) {
    passList.add(String.fromCharCode(element));
  });
  randomLetterSymbols.forEach((element) {
    passList.add(String.fromCharCode(element));
  });
  passList.shuffle();
  String password = "";
  passList.forEach((element) => password += element);
  String encodedPassword =
      base64UrlEncode(utf8.encode(password)); //? stringleri sifreleyir.
  String decodedPassword = utf8.decode(base64Url.decode(encodedPassword));
  print("password: $password");
  print("password.length: ${password.length}");
  print("encodedPassword: $encodedPassword");
  print("decodedPassword: $decodedPassword");
}
