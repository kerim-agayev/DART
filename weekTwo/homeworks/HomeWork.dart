import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  HomeWork homeWork = HomeWork();

  //homeWork.Task1();
  homeWork.Task2();
  //homeWork.Task3();
}

class HomeWork {
//! Ev tapşırığı 1:
// Rock, Scissors, Paper game (Daş, Qayçı, Kağız oyunu)
// Oyunun qaydaları:
// Daş qayçıya qalib gəlir
// Kağız daşa qalib gəlir
// Qayçı kağıza qalib gəlir
// Texniki tapşırıq:
// Oyunun qaydalarını bir Map içində saxlayın
// İstifadəçi exit yazmadığı müddətcə oyundan (proqramdan) çıxış olunmasın
// Xəta analizi aparın. İstifadəçi yanlış input daxil etdiyi zaman konsolda xəta görünməsin və ya proqramdan çıxış olunmasın. Xəta yerinə (yanlış seçim etdiniz, yenidən daxil edin yazılsın)
// İstifadəçi seçimini etdikdən sonra kompyuterin seçimi random şəkildə olsun. Random seçimi yaratmaq üçün Dart'ın  Random() sinfindən istifadə edə bilərasiniz. İstifadəsi çox asandır biraz araşdırma etməyiniz kifayətdir.
// İstifadəçinin və Kompyuterin seçimləri olunduqdan sonra proqram seçimləri yoxlasın və qalibin istifadəçi və ya kompyuter olduğunu konsolda çap etsin. və ümumu hesab konsolda çap olunsun (komp 3 - 2 user) bu şəkildə. amma her oyundan sonra yenidən oynamaq imkanı olsun. exit yazılmadan oyundan çıxış olunmasın.

  void Task1() {
    //?oyun qaydalari
    Map<String, String> oyunQaydalari = {
      '1': "Daş qayçıya qalib gəlir",
      '2': " Kağız daşa qalib gəlir",
      '3': "Qayçı kağıza qalib gəlir",
    };
    bool exit = true;
    Random random = new Random();
    print('Daş, Qayçı, Kağız oyununa xoş gəldiniz');

    for (var key in oyunQaydalari.keys) {
      print('oyun qaydaları-${key}.${oyunQaydalari[key]}');
    }
    print('Daş, Qayçı, Kağız - 3 - ündən birini seçin');
    while (exit) {
      print(
          'Daş üçün 1-i, Qayçı üçün 2-ini, Kağız - üçün 3 seçin, Çıxış üçün Exit yazın');
      String input = stdin.readLineSync()!;
      switch (input) {
        case '1':
          int randomNumber = random.nextInt(3) + 1;
          if (randomNumber == 1) {
            print('Eyni Daş fiqurunu seçdiniz');
            print('*' * 30);
          } else if (randomNumber == 2) {
            print('Komputer Qayçı seçdi');
            print('Qazandınız: ${oyunQaydalari.values.elementAt(0)} ');
            print('*' * 30);
          } else {
            print('Komputer Kağız seçdi');
            print('Uduzdunuz: ${oyunQaydalari.values.elementAt(1)}');
            print('*' * 30);
          }
        case '2':
          int randomNumber = random.nextInt(3) + 1;
          if (randomNumber == 1) {
            print('Komputer Daş seçdi');
            print('Uduzdunuz: ${oyunQaydalari.values.elementAt(0)}');
            print('*' * 30);
          } else if (randomNumber == 2) {
            print('Eyni Qayçı fiqurunu seçdiniz');
            print('*' * 30);
          } else {
            print('Komputer Kağız seçdi');
            print('Qazandınız: ${oyunQaydalari.values.elementAt(2)}');
            print('*' * 30);
          }
        case '3':
          int randomNumber = random.nextInt(3) + 1;
          if (randomNumber == 1) {
            print('Komputer Daş seçdi');
            print('Qazandınız: ${oyunQaydalari.values.elementAt(1)}');
            print('*' * 30);
          } else if (randomNumber == 2) {
            print('Komputer Qayçı seçdi');
            print('Uduzdunuz: ${oyunQaydalari.values.elementAt(2)}');
            print('*' * 30);
          } else {
            print('Eyni Kağız fiqurunu seçdiniz');
            print('*' * 30);
          }
        case 'Exit':
          return;

        default:
          print('Düzgün seçim etmediniz. Xahiş edirik yenidın yoxlayın.');
          print('*' * 30);
      }
    }
  }

//! Ev taşırığı 2:
// İstifadəçidən konsolda bir ədəd daxil etməsini tələb edən bir proqram yaradın.
// Konsolda çap ediləcəklər:
// Daxil edilən ədədin faktorialı konsolda çap edilsin (Faktorialın nə olduğunu bilməyənlər araşdırıb öyrənsinlər sadə birşeydir).
// Sıfırdan, daxil edilən ədədə'dək olan tək və cüt rəqəmlər ayrı ayrı listlərə əlavə olunsun və listlərin hər biri konsolda çap olunsun.
// Sıfırdan daxil edilən ədədə'dək olan fibonacci ədədlərinin cəmi konsolda çap olunsun. (Fibonacci ədədlərinin nə olduğunu araşdırıb öyrənə bilərsiniz).
  void Task2() {
    print('Xahiş edirik bir ədəd daxil edin');

    String input = stdin.readLineSync()!;
    var splittedInput = input.split('');
    //! any ???

    bool hasLetter =
        splittedInput.any((char) => char.contains(RegExp(r'[a-zA-Z]')));
    print('splittedInput:$splittedInput');
   
    
    if (!hasLetter) {
      //   //? faktorial
      int a = int.parse(input);
      int number = 1;
      for (var i = 0; i < a; i++) {
        number = number * (a - i);
      }
      print('faktoriyal: $number');
    } else {
      print('Rəqəm daxil etmədiniz.');
    }

    // //? tek ve cut ededler
    if (!hasLetter) {
      List<int> tek = [];
      List<int> cut = [];
      for (var i = 0; i < int.parse(input); i++) {
        if (i % 2 == 0) {
          cut.add(i);
        } else {
          tek.add(i);
        }
      }
      print('Tək ədədlər: $tek');
      print('Cüt ədədlər: $cut');
    }

    //? fibonaccci - 0 1 1 2 3 5 8 13 21 34 55 89

    double num1 = 0;
    double num2 = 1;
    List<double> numbers = [];
    double num3 = 0;
    if (!hasLetter) {
      for (var i = 0; i < int.parse(input); i++) {
        num3 = num1 + num2;
        num1 = num2;
        num2 = num3;

        if (!(num3 >= int.parse(input))) {
          numbers.addAll([num3]);
        }
      }

      double sum = numbers.reduce((value, element) => value + element);
      print('fibonacci rəqəmləri: $numbers');
      print('fibonacci toplam: $sum');
    }
  }

//!  Ev tapşırığı 3:
// İstifadəçidən hər hansısa bir söz daxil etməsini tələb edən proqram yaradın.
// Konsolda istifadəçinin daxil etdiyi sözün Palindrom söz olub olmadığını bildirən məlumat çap olunsun.

  void Task3() {
    //palindrom - tenet,
    print('Xahiş edirik bir ədəd söz daxil edin');

    String input = stdin.readLineSync()!;
    var list = input.split('');

    var reversed = list.reversed;
    var join = reversed.join();
    if (input == join) {
      print('Daxil etdiyiniz söz palindrom sözdür.');
    } else {
      print('Daxil etdiyiniz söz palindrom söz deyil.');
    }
  }
}

// "console": "terminal",
// "program": "${file}"