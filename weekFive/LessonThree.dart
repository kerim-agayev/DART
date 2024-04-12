void main() {
  //? private
  print("_age:$_age");
  //? encapsulation
  //2 - ci
  Person person = Person(5, "name", "5555555");
  // print("person._phoneNumber:${person._phoneNumber}");
  //3 - cu
  // Person person = Person(age: 5, name: " name", phoneNumber: "8118121");
  print("person._phoneNumber:${person._phoneNumber}");
  print("person.phoneNumber:${person.phoneNumber}");

  person.phoneNumber = "deyisdirildi";
  print("person.phoneNumber deyisdirildi:${person.phoneNumber}");
}

//? private
int _age = 22;

//? encapsulation
class Person {
  String name;
  double? _number;
  int age;
  String _phoneNumber; // 2 - ci
  // late String _phoneNumber;//3 - cu
  // Person({required this.age, required this.name, required this._phoneNumber})_phoneNumber - required named olanda constructorda ola bilmez
  //2 - ci
  Person(this.age, this.name, this._phoneNumber);
  //3 - cu

  // Person({required this.age, required this.name, required String phoneNumber}) {
  //   _phoneNumber = phoneNumber;
  // }
  //? getter
  // String get phoneNumber {
  //   return _phoneNumber;
  // }

  String get phoneNumber => _phoneNumber;
  //? setter
  set phoneNumber(String value) => _phoneNumber = value;
}
