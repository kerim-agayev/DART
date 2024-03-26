import "dart:io";
import "dart:math";

void main(List<String> args) {
  //? task2 -
  //  istifadeciden 1 ile 100 arasinda bir reqem alirsiz
  // eyni zamanda bu telebden evvel program ozu random bir reqem yaradir, 1 ile 100 arasinda
  // consoleda siz o reqemi tapana qeder print verirsiz, yaxinlasdiz, uzaqlasdiz
  Random random = Random();
  int randomNumber = random.nextInt(101);
  int chance = 5;
  print(
      "yeni oyuna xos geldiniz, reqemi tapib qalib gelmek ucun 5 shansiniz var.");
  print("xahis edirik bir reqem daxil edin");
  while (true) {
    try {
      String input = stdin.readLineSync()!;
      int userNumber = int.parse(input);
      if (chance == 0) {
        print('meglub oldunuz');
        break;
      }
      if (randomNumber == userNumber) {
        print("reqemler beraberdir");
        break;
      } else if (randomNumber - userNumber > 0) {
        chance--;
        if (randomNumber - userNumber <= 5) {
          print("reqemi bir az daha boyuk secin, $chance shansiniz qaldi");
        } else {
          print("reqemi daha boyuk secin, $chance shansiniz qaldi");
        }
      } else if (userNumber - randomNumber > 0) {
        chance--;
        if (userNumber - randomNumber <= 5) {
          print("reqemi bir az daha kicik secin, $chance shansiniz qaldi");
        } else {
          print("reqemi  daha kicik secin, $chance shansiniz qaldi");
        }
      }
    } catch (e) {
      print("reqem daxil etmediniz");
    }
  }
}
