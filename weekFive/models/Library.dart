class Library {
  final String page;
  final String author;
  final String genre;
  final String year;
  double? price;
  final String bookName;

//? ctor
  Library({required this.page,required this.author,required this.genre,required this.year,required this.bookName, required this.price});

//?showDetails metod
  void showDetails() {
    print(
        "author:$author bookName:$bookName page:$page genre:$genre year:$year price:$price ");
  }

//?changeDetails metod
  void changeDetails(double price) {
    this.price = price;
  }
}
