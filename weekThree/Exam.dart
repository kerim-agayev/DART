import "dart:io";

void main(List<String> args) {
  //? Exam
//  Satış platforması üçün kod yazılmalıdır.
// Tələblər:
// 1- Sayta daxil olarkən 2 seçim verməlidir : login ilə giriş və //!guest giriş
//? 2- Login ilə girişdə, istifadəçi adı və porolu daxil edilməlidir.
//! 3- İstifadəçi adı və ya parol: null və boş ola bilməz.
//? 4- Girişdən sonra məhsulların siyahısı əks olunmalıdır.
// 5- Müştəri istədiyi məhsulu seçəndən sonra məhsulun məlumatları və qiyməti göstərilməlidir və  //! davam edib-etməyəcəyi soruşulmalıdır.
//? 6- Davam etdiyi halda 2 seçim təklif olunur : Nağd və Kartla ödəmə
//? 7- Nağd ödəmə zamanı 2 seçim verilir -  Çatdırlma və Özün gəl apar. Çatdırlma seçiləndə qiymətə 10 azn əlavə edilməlidir. Özün gəl aparda məhsulun qiyməti stabil qalır.
//? 8- Kartla ödəmə zamanı 2 seçim təklif olunur: Birbaşa və taksit
//? 9- Kartla birbaşa ödəniş zamanı məhsulun qiyməti stabil qalır və kart məlumatları tələb olunur.
//? 10- Taksit seçildikdə 3 bank təklif olur: Birkart, Tamkart və Bolkart
//? 11- Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.
// 12- Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.
// 13- Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.
  Map<String, String> musteri = {
    "kerim": "40983456",
    "elmar": "12345678",
    "eldar": "87654321"
  };
  Map<String, int> productList = {
    "alma": 55,
    "heyva": 66,
    "armud": 77,
    "limon": 88,
    "nar": 99
  };
  Map<String, int> alinacaqMehsullar = {};

  print(" login ilə giriş ucun 1 vəya guest giriş ucun 2 secin");

  int secim = int.parse(stdin.readLineSync().toString());

  if (secim == 1) {
    print('login ile giris secdiniz. ad ve parol daxil edin');
    print("ad daxil edin");
    String ad = stdin.readLineSync()!;
    print("parol daxil edin");
    String parol = stdin.readLineSync()!;
    print("magazamiza xos geldiniz: $ad");
    for (var i = 0; i < productList.length; i++) {
      print("mehsullarimiz:${i + 1}. ${productList.keys.elementAt(i)}");
    }
    print("istediyiniz mehsulun adini yazin");
    String secilenMehsul = stdin.readLineSync()!;

    productList.forEach((key, value) {
      if (secilenMehsul == key) {
        print("secdiyiniz mehsul haqqinda melumatlar:");
        print("$key:${productList[key]} manat");
        print("$key sebete elave olundu");
        alinacaqMehsullar.addAll({key: value});
      }
    });

    print("davam edib odenisi tamamlamaq isteyirsiz? he-1, yox - 0");
    print("seciminiz");
    int secimHeYox = int.parse(stdin.readLineSync().toString());
    if (secimHeYox == 1) {
      print(" Nağd ucun 1,  Kartla ödəmə ucun 2 yazin");
      int secimNagdorKart = int.parse(stdin.readLineSync().toString());
      if (secimNagdorKart == 1) {
        print("Nağd ödəmə secdiniz");
        print("Çatdırlma ucun 1 və Özün gəl apar ucun 2 secin");
        print("catdirilma odenislidir, odenisi 10 azndir");
        int secimGelAparOrCatdirilma =
            int.parse(stdin.readLineSync().toString());
        if (secimGelAparOrCatdirilma == 1) {
          print("catdirilma secdiniz");
          print(
              "sebetinizdeki mehsullarin qiymeti:${alinacaqMehsullar.values.reduce((value, element) => value + element)}");
          print("catdirilma: 10 manatdir");
          var umumi = alinacaqMehsullar.values
              .reduce((value, element) => value + element);
          print("umumi odeyeceyiniz mebleg:${umumi + 10}");
        } else {
          print("gel ozun apar secdiniz secdiniz");
          print(
              "odeyeceyiniz mebleg:${alinacaqMehsullar.values.reduce((value, element) => value + element)}");
        }
      } else {
        print("Kartla ödəmə secdiniz");
        print("Birbaşa odenis ucun 1, taksit ucun 2 yazin");
        int secimBirbasaOrTaksit = int.parse(stdin.readLineSync().toString());

        if (secimBirbasaOrTaksit == 1) {
          print(
              'Birbaşa odenis secdiniz,odeyeceyiniz mebleg:${alinacaqMehsullar.values.reduce((value, element) => value + element)}');
          print("kart melumatlarinizi daxil edin:");
          print("adinizi daxil edin");
          String kartName = stdin.readLineSync()!;
          print("kodunuzu daxil edin");
          String kartCode = stdin.readLineSync()!;
          for (var i = 0; i < musteri.length; i++) {
            if (kartName == musteri.keys.elementAt(i) &&
                kartCode == musteri.values.elementAt(i)) {
              print("odenisi daxil edin");
              int musteriOdenisi = int.parse(stdin.readLineSync()!);
              if (musteriOdenisi ==
                  alinacaqMehsullar.values
                      .reduce((value, element) => value + element)) {
                print("odenis tamamlandi");
              } else {
                print("odenis tamamlanmadi");
              }
            }
          }
        } else {
          print("Taksit secdiniz");
          print("Birkart ucun 1, Tamkart ucun 2 və Bolkart ucun 3 yazin");
          int secimBirKartBolKartTamKart =
              int.parse(stdin.readLineSync().toString());

          if (secimBirKartBolKartTamKart == 1) {
            print("birkart ile odenis secdiniz");
            print(
                "odeyeceyiniz mebleg:${alinacaqMehsullar.values.reduce((value, element) => value + element)} ");
            print(
                "Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür, istediyiniz reqemi secin");
            double birkarttaksit = double.parse(stdin.readLineSync()!);
            if (birkarttaksit == 3) {
              print("$birkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / birkarttaksit)} ");
            } else if (birkarttaksit == 6) {
              print("$birkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / birkarttaksit)} ");
            } else if (birkarttaksit == 12) {
              print("$birkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / birkarttaksit)} ");
            } else if (birkarttaksit == 18) {
              print("$birkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / birkarttaksit)} ");
            } else if (birkarttaksit == 24) {
              print("$birkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / birkarttaksit)} ");
            }
          } else if (secimBirKartBolKartTamKart == 2) {
            print("tamkart ile odenis secdiniz");
            print(
                "odeyeceyiniz mebleg:${alinacaqMehsullar.values.reduce((value, element) => value + element)} ");
            print(
                "Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.");

            double tamkarttaksit = double.parse(stdin.readLineSync()!);
            if (tamkarttaksit == 3) {
              print("$tamkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / tamkarttaksit)} ");
            } else if (tamkarttaksit == 6) {
              print("$tamkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / tamkarttaksit)} ");
            } else if (tamkarttaksit == 12) {
              print("$tamkarttaksit ayliq odenis secdiniz");
              var twelfemonth = (alinacaqMehsullar.values
                      .reduce((value, element) => value + element)) *
                  1.25 /
                  tamkarttaksit;
              print("odeyeceyiniz mebleg:$twelfemonth");
            }
          } else {
            print("bolkart ile odenis secdiniz");
            print(
                "odeyeceyiniz mebleg:${alinacaqMehsullar.values.reduce((value, element) => value + element)} ");
            print(
                " Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.");

            double bolkarttaksit = double.parse(stdin.readLineSync()!);
            if (bolkarttaksit == 3) {
              print("$bolkarttaksit ayliq odenis secdiniz");
              print(
                  "odeyeceyiniz mebleg:${(alinacaqMehsullar.values.reduce((value, element) => value + element) / bolkarttaksit)} ");
            } else if (bolkarttaksit == 6) {
              print("$bolkarttaksit ayliq odenis secdiniz");
              var umumimebleg = (alinacaqMehsullar.values
                          .reduce((value, element) => value + element)) /
                      6 +
                  10;
              print("odeyeceyiniz mebleg:$umumimebleg");
            }
          }
        }
      }
    } else {
      print("davam etmemek versiyasi");
    }
  } else {
    print('guest ile giris secdiniz. ');
  }
}
