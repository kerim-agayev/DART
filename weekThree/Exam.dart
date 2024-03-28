void main(List<String> args) {
  var a = 5;
  var b = 4;
  a++;

  sum(a, b++);
  print("b:$b");
}

sum(int a, int b) {
  print(a + b);
}
