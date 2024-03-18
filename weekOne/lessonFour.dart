import 'dart:io';

void main() {
  //print(name!.length); //!!!  Local variable 'name' can't be referenced before it is declared. --- javascriptden ferqi.
  //stdout.write('what is your name?\n');
  // var name = stdin.readLineSync();
  //String nametwo = stdin.readLineSync().toString(); //!nulable ola bilmesi ucun
  //String? namethree = stdin.readLineSync().toString(); //!nullable olmasi ucun
  //print(name.runtimeType); //!runtimetype hec ne daxil etmesek de - String olacaq.
  //print(name?.length); //!0 - verecek, hec ne daxil etmesek, bosluq qoysaq - 1 olacaq uzunluq
  //stdout.writeln(); - avtomatik alt setire atir.
  //  -  ? - null aware operator - datam null gelse, ona uygun hereket edecek
  //  -  ! - null check operator - null gelmeyecek deyirik.
  // var age = stdin.readLineSync();
  //print(int.parse(age!) + 10);
  //print(int.parse(age.toString()) + 10); //tostring - null  gelme ehtimalina qarsi yazilir.
  //task 1 -
  stdout.write('iki eded reqem daxil edin\n');
  var numone = stdin.readLineSync();
  while(numone!.contains(RegExp(r'[a-zA-Z]') ) ){
  stdout.write('birinci eded sehvdir  reqem daxil edin\n');
  numone = stdin.readLineSync();
  }
  var numtwo = stdin.readLineSync();
  while(numtwo!.contains(RegExp(r'[a-zA-Z]') ) ){
  stdout.write('ikinci eded sehvdir reqem daxil edin\n');
 numtwo = stdin.readLineSync();
  }
  var result;
  stdout.write('bir eded simvol daxil edin - +, -, *, /.\n');
  var simvol = stdin.readLineSync();
  if (simvol == '+') {
    result = double.parse(numone.toString()) + double.parse(numtwo.toString());
    print("result:$result");
  } else if (simvol == '*') {
    result = double.parse(numone.toString()) * double.parse(numtwo.toString());
    print("result:$result");
  } else if (simvol == '-') {
    result = double.parse(numone.toString()) - double.parse(numtwo.toString());
    print("result:$result");
  } else if (simvol == '/') {
    result = double.parse(numone.toString()) / double.parse(numtwo.toString());
    print("result:$result");
  }
}
