import 'dart:io';

void main() {
  // Mehsullari saxlamaq ucun map
  Map<String, int> mehsulListi = {};

  // While
  while (true) {
    // 
    print("1. Yeni Mehsul Elave et");
    print("2. Mehsul Melumatlarini Deyisdir");
    print("3. Mehsul Sil");
    print("4. Toplam Mehsul Miqdari");
    print("5. Secdiyiniz Mehsul Haqqinda Melumat");
    print("0. Çıxış");

    // Musteriden secdiyi melumati almaq
    int secim = int.parse(stdin.readLineSync()!);

    // Seçilen reqeme gore gorulecek isler
    if (secim == 1) {
      // Yeni mehsul elave et
      newProduct(mehsulListi);
    } else if (secim == 2) {
      // Mehsul melumatlarin deyisdir
      updateProduct(mehsulListi);
    } else if (secim == 3) {
      // Mehsul sil
      deleteProduct(mehsulListi);
    } else if (secim == 4) {
      // Toplam mehsul sayi
      totalProductCount(mehsulListi);
    } else if (secim == 5) {
      // Secilmis mehsul haqqinda melumat
      informationProduct(mehsulListi);
    } else if (secim == 0) {
      // Çıxış
      break;
    } else {
      // Xetali secim
      print("Xetali secim!");
    }
  }
}

// add
void newProduct(Map<String, int> mehsulSiyahisi) {
  print("Mehsul adini daxil edin: ");
  String mehsulAdi = stdin.readLineSync()!;
  print("Mehsul miqdarini daxil edin: ");
  int mehsulMiqdari = int.parse(stdin.readLineSync()!);
//!mehsulSiyahisi[mehsulAdi]
  mehsulSiyahisi[mehsulAdi] = mehsulMiqdari;
  print("$mehsulAdi, $mehsulMiqdari eded siyahiya elave edildi!");
}

// update
void updateProduct(Map<String, int> mehsulSiyahisi) {
  print("Deyisdirmek istediyiniz mehsulun adini daxil edin: ");
  String mehsulAdi = stdin.readLineSync()!;

  if (mehsulSiyahisi.containsKey(mehsulAdi)) {
    print("Yeni miqdari daxil edin: ");
    int yeniMiqtar = int.parse(stdin.readLineSync()!);

    mehsulSiyahisi[mehsulAdi] = yeniMiqtar;
    print("$mehsulAdi'nin miqtarı $yeniMiqtar olarak deyisdirildi!");
  } else {
    print("$mehsulAdi siyahida tapila bilmedi!");
  }
}

// delete
void deleteProduct(Map<String, int> mehsulSiyahisi) {
  print("Silmek istediyiniz mehsul adini daxil edin: ");
  String mehsulAdi = stdin.readLineSync()!;

  if (mehsulSiyahisi.containsKey(mehsulAdi)) {
    mehsulSiyahisi.remove(mehsulAdi);
    print("$mehsulAdi lsiyahidan silindi!");
  } else {
    print("$mehsulAdi siyahida tapila bilmedi!");
  }
}

// Toplam mehsul sayi
void totalProductCount(Map<String, int> mehsulSiyahisi) {
  int toplamMiqdar = 0;
  mehsulSiyahisi.forEach((key, miqdar) {
    print('$key sayi:$miqdar');
    toplamMiqdar += miqdar;
  });
  print("Toplam mehsul sayi: $toplamMiqdar");
}

// information
void informationProduct(Map<String, int> mehsulSiyahisi) {
  print("Melumat almaq istediyiniz mehsulun adini daxil edin: ");
  String mehsulAdi = stdin.readLineSync()!;

  if (mehsulSiyahisi.containsKey(mehsulAdi)) {
    int mehsulMiqdari = mehsulSiyahisi[mehsulAdi]!; // null-safety value ucun
    print("$mehsulAdi ucun miqdar: $mehsulMiqdari");
  } else {
    print("$mehsulAdi siyahida tapilmadi!");
  }
}
