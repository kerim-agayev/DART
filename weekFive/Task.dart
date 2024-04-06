import 'dart:io';

import 'models/Library.dart';

void main(List<String> args) {
  Library book1 = Library(
      page: "100",
      price: 10,
      author: "Franz Kafka",
      genre: "dram",
      year: "1915",
      bookName: "Cevrilme");
  Library book2 = Library(
      page: "800",
      price: 15,
      author: "Duma",
      genre: "macera",
      year: "1700",
      bookName: "Monte Kristo kontu");
  Library book3 = Library(
      page: "200",
      price: 8,
      author: "Agatha Kristi",
      genre: "dedektiv",
      year: "1956",
      bookName: "Elifba sirasi ile qetl");
  Library book4 = Library(
      page: "400",
      price: 25,
      author: "Philip K.Dick",
      genre: "elmi fantastika",
      year: "1965",
      bookName: "Toplu hekayeler");
  Library book5 = Library(
      page: "500",
      price: 13,
      author: "Haruki Murakami",
      genre: "dram",
      year: "1998",
      bookName: "Kafka Sahilde");
  Library book6 = Library(
      price: 18,
      page: "200",
      author: "Aziz Nesin",
      genre: "komediya",
      year: "1970",
      bookName: "Zubuk");
  Library book7 = Library(
      price: 22,
      page: "250",
      author: "Aziz Nesin",
      genre: "komediya",
      year: "1976",
      bookName: "Gol Krali");
  Library book8 = Library(
      price: 12,
      page: "300",
      author: "Aziz Nesin",
      genre: "komediya",
      year: "1987",
      bookName: "Hekayeler");
  Library book9 = Library(
      price: 12,
      page: "200",
      author: "Agatha Kristi",
      genre: "dedektif",
      year: "1956",
      bookName: "Hekayeler");
  Library book10 = Library(
      price: 101,
      page: "200",
      author: "Oxford",
      genre: "arasdirma",
      year: "1956",
      bookName: "Ensiklopediya");

  List<Library> books = [
    book1,
    book2,
    book3,
    book4,
    book5,
    book6,
    book7,
    book8,
    book9,
    book10,
  ];
  print("kitabxana sistemine xos geldiniz");
  print("axtaris etmek istediyiniz parametri qeyd edin");
  print("""
Muellife gore axtaris - 1;
Qiymete gore axtaris - 2;
Kitab adina gore axtaris - 3;
Janra gore axtaris - 4;
Kitab nesr iline gore axtaris - 5;
Sehife sayina gore axtaris - 6;
        """);
  String input = stdin.readLineSync()!;
  GetLibrary(input, books);
}

// Task (Library System)

// 1.Kitablar haqqında detalları özündə saxlayacaq bir sinif yaradın.
// 2.Bu sinfin daxilində müxtəlif metodlar olmalıdır. Məs (showDetails, changeDetails və sair);
// 3.main dart faylında isə 5-6 ədəd kitabı özündə sağlayan bir list yaradın.
// 4.Kitabın adına görə, yayım ilinə görə, müəllif adına görə axtarış sistemi yaradın.
// 5.İstifadəçi istədiyi filter üzrə axtarış edə bilsin.

void GetLibrary(String input, List<Library> books) {
  switch (input) {
    case "1":
      getAuthorName(books);
    case "2":
      getPrice(books);
    case "3":
      getBookName(books);
    case "4":
      getGenre(books);
    case "5":
      getYear(books);
    case "6":
    default:
  }
}

void getAuthorName(List<Library> books) {
  print("Axtarmaq istediyiniz yazarin adini daxil edin");
  String authorName = stdin.readLineSync()!.toLowerCase().split(" ").join();

  int findedBooks = 0;
  int howManyBook = 0;
  for (var i = 0; i < books.length; i++) {
    String book = books[i].author.toLowerCase().split(" ").join();
    if (book == authorName) {
      findedBooks++;
      howManyBook++;
      print("Yazarin databaseimizdeki $howManyBook. kitabi");
      print("bookName: ${books[i].bookName}");
      print("price: ${books[i].price}");
      print("genre: ${books[i].genre}");
      print("page: ${books[i].page}");
      print("year: ${books[i].year}");
      print("*" * 10);
    }
  }
  if (findedBooks == 0) {
    getAuthorName(books);
  }
}

void getPrice(List<Library> books) {
  print("daxil etmek istediyiniz qiymeti ve ya qiymet araligini qeyd idin");
  print("qiymet ucun, meselen: 15");
  print("qiymet araligi ucun, meselen: 15-25");
  int howManyBook = 0;
  List price = stdin.readLineSync()!.split("-");
  if (price.any((element) => element.contains(RegExp(r'[a-zA-Z]')))) {
    print("duzgun formada input daxil etmediniz");
    getPrice(books);
  } else {
    if (price.length == 1) {
      for (var i = 0; i < books.length; i++) {
        if (double.parse(price[0]) == books[i].price) {
          howManyBook++;
          print("Qiymeti ${books[i].price} olan $howManyBook.kitab ");
          print("bookName: ${books[i].bookName}");
          print("author: ${books[i].author}");
          print("genre: ${books[i].genre}");
          print("page: ${books[i].page}");
          print("year: ${books[i].year}");
          print("*" * 10);
        }
      }
    } else if (price.length == 2) {
      price.sort();
      var [a, b] = price;
      for (var i = 0; i < books.length; i++) {
        if (books[i].price! >= int.parse(a) &&
            books[i].price! <= int.parse(b)) {
          howManyBook++;
          //10, 15, 8, 25,13, 18, 22, 12, 12
          print("bu araliqda olan $howManyBook.kitab");
          print("bookName: ${books[i].bookName}");
          print("price: ${books[i].price}");
          print("author: ${books[i].author}");
          print("genre: ${books[i].genre}");
          print("page: ${books[i].page}");
          print("year: ${books[i].year}");
          print("*" * 10);
        }
      }
    }
  }
}

void getBookName(List<Library> books) {
  print("Axtarmaq istediyiniz kitabi qeyd edin");
  String bookinput = stdin.readLineSync()!.toLowerCase().split(" ").join();
  int findedBooks = 0;

  for (var i = 0; i < books.length; i++) {
    String book = books[i].bookName.toLowerCase().split(" ").join();
    if (book.contains(bookinput)) {
      findedBooks++;
      print("bookName: ${books[i].bookName}");
      print("price: ${books[i].price}");
      print("genre: ${books[i].genre}");
      print("page: ${books[i].page}");
      print("year: ${books[i].year}");
      print("year: ${books[i].author}");
      print("*" * 10);
    }
  }
  if (findedBooks == 0) {
    getBookName(books);
  }
}

void getGenre(List<Library> books) {}

void getYear(List<Library> books) {}

void getPage(List<Library> books) {}
