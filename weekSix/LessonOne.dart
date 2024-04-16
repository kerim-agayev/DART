void main() {
//?
  A a = b();
  // a.metot();
  D d = b();
  // d.metotD();
}

abstract class A {
  void metot() {
    print("a");
  }
}

abstract class D {
  void metotD() {
    print("a");
  }
}

class b implements A, D {
  //? super classda olan butun metodlar cagirilmalidir
  @override
  void metot() {
    // TODO: implement metot
  }

  @override
  void metotD() {
    // TODO: implement metotD
  }
}
