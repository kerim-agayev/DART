void main() {
//? Inheritance

  Animal animal =
      Animal(classes: "", isCarnivious: true, legCount: 4, name: "cow");

  print("${animal.name}");
  animal.display();
  //? PolyMorphism
  Lion lion = Lion(
      hasMane: true,
      classes: "classes",
      isCarnivious: true,
      legCount: 4,
      name: "aslan");
  print("*" * 30);
  lion.display();

  //? Abstraction
  //Fruits fruits = Fruits(); Abstract classes can't be instantiated.
  Apple apple = Apple();
  //! class modifiers
  //! https://dart.dev/language/modifier-reference
}

class Animal {
  String classes;
  String name;
  int legCount; //etobur
  bool isCarnivious;
  Animal({
    required this.classes,
    required this.isCarnivious,
    required this.legCount,
    required this.name,
  });

  void Eat() {
    //! isCarnivious == true ? print("$name is eating meat") : print("$name is eating grass");
    isCarnivious
        ? print("$name is eating meat")
        : print("$name is eating grass");
  }

  //? polymorphism
  void display() {
    print('''
  type:$classes
  leg count: $legCount
  is carnivious:  $isCarnivious
  ''');
  }
}

//? polymorphism
class Lion extends Animal {
  bool hasMane;
  Lion(
      {required this.hasMane,
      required super.classes,
      required super.isCarnivious,
      required super.legCount,
      required super.name});

  @override //? polymorphism c# da ferqli menada istifade olunur.//override sozu silinde bunu ferqli bir display funksiyasi kimi basa dusecek.
  void display() {
    super.display();
    print("has mane: $hasMane");
  }
}
//? Abstraction - abstract class object yaratmaq olmur

abstract class Fruits {
  //instance yaratmaq olmur

  void display() {} //? concrete - imza + body
  void write(); //? abstract - imza
}

class Apple implements Fruits {
  @override
  void display() {
    // TODO: implement display
  }

  @override
  void write() {
    // TODO: implement write
  }
}

//?  extends - implements
//? genislendirme - icra edilme;
//? superdeki metotlar cagirilmaya biler - mecbur override edilmelidir;
//? tek bir extends olur - birden cox implements olur;
