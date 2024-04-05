void main() {
  //? OOP
  //? print birbasa obyekti vermir, Instance of "Person" verir bize.
  //?ctorsuz
  // Person person1 = Person();
  // print(person1);
  // person1.age = 40;
  // print(person1.age);
  //yalniz iki halda default ctor teyin olunur, birincisi fieldlara default deyer verende, ikincisi fieldlar nullable olanda.
  //? ctorlu
  // Person person2 = Person("kerim", 26, false, 1.78, "developer");
  //! print("person2:${person2.name}"); class'da this.name yazmazsaq null gelecek.
  // print("person2:${person2.name}");
  //? named
  Person person3 = Person(
      age: 35, height: 1.69, name: "Messi", isMarried: true, job: "Footballer");
  print("person3: ${person3.name}");
}

  class Person {
  // String name = "john doe";
  // int age = 30;
  // bool isMarried = false;
  // double height = 1.85;
  // String job = "developer";
  String? name;
  int? age;
  bool? isMarried;
  double? height;
  String? job;
  //? 1. metod - this
  // Person(String name, int age, bool isMarried, double height, String job) {
  //   this.name = name;
  //   this.age = age;
  //   this.isMarried = isMarried;
  //   this.height = height;
  //   this.job = job;
  // }
  //? 2. metod
  //   Person(String name1, int age1, bool isMarried1, double height1, String job1) {
  //   name = name1;
  //   age = age1;
  //   isMarried = isMarried1;
  //   height = height1;
  //   job = job1;
  // }
  //? 3. metod - this - fieldlara nullable vermeye ehtiyac yoxdur.
  // Person(
  //   this.name,
  //   this.age,
  //   this.height,
  //   this.isMarried,
  //   this.job,
  // );
  //? 4.metod - named - fieldlara nullable vermeye ehtiyac yoxdur.
  Person(
      {required this.age,
      required this.height,
      required this.name,
      required this.isMarried,
      required this.job});
}
