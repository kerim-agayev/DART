import 'dart:io';
import 'dart:math';

void main() {
  List<String> choose = ["das", "kagiz", "qayci"];

  Map<String, String> rules = {
    'das': 'qayci',
    'qayci': 'kagiz',
    'kagiz': 'das',
  };
  while (true) {
    print("Secim et - das ,kagiz.qayci");

    String userChoice = stdin.readLineSync()!.toLowerCase();
    if (userChoice == 'exit') {
      print("Oyun bitdi");
      break;
    }
     String compChoice = choose[Random().nextInt(3)];

    print("user: $userChoice - $compChoice :comp ");

    bool isTie = userChoice == compChoice;
    bool isUserWin = false;
    rules.forEach((key, value) {
      print("Key: $key -- Value: $value");
      if (key == userChoice && value == compChoice) {
        isUserWin = true;
      }
    });
    if (isTie) {
      print("beraberlik elde olundu");
    } else if (isUserWin) {
      print('user qalib geldi');
    } else {
      print('meglub oldunuz');
    }
  }
}