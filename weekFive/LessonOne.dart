void main() {
  Human human1 = Human(name: "kerim", age: 26, job: "developer");
  Human human2 = Human.hobby(hobby: "chess");
}

class Human {
  String? name;
  int? age;
  String? job;
  String? hobby;

  Human({required this.name, required this.age, required this.job});
  //? named constructor
  Human.hobby({this.hobby}) {
    print("hobby:$hobby");
  }
  //! const constructor - icindekiler finaldisa

  void sayMyName() {
    print("name:$name");
  }
}
