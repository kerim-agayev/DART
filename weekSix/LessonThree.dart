import 'dart:io';

import 'LessonTwo.dart';
import 'models/AdminModel.dart';
import 'models/BasicUserModel.dart';
import 'models/BusModel.dart';
import 'models/CarModel.dart';
import 'models/ColorsEnum.dart';
import 'models/TruckModel.dart';
import 'models/UserModel.dart';
import 'models/VehicleModel.dart';

List<UserModel> mylist = [
  AdminModelTask(
      age: 20,
      userName: "admin",
      userSurName: "userSurName",
      name: "Admin",
      password: "admin1234"),
  BasicUserModel(
      age: 20,
      userName: "user",
      userSurName: "userSurName",
      name: "USER",
      password: "user1234"),
];
List<VehicleModel> myproducts = [
  CarModel(
      carColor: ColorsEnum.black,
      model: "model",
      name: " name",
      speed: 100,
      year: "1980",
      id: 1),
  TruckModel(
      carColor: ColorsEnum.black,
      model: "model",
      name: " name",
      speed: 100,
      year: "1980",
      id: 1),
  BusModel(
      carColor: ColorsEnum.black,
      model: "model",
      name: " name",
      speed: 100,
      year: "1980",
      id: 1)
];

void main() {
  print("username daxil edin");
  UserModel? loggeduser = login(mylist);

  openPanel(checkUserIsAdmin(loggeduser!), loggeduser, myproducts);
}

UserModel? login(List<UserModel> mylist) {
  String username = stdin.readLineSync().toString();
  print("password daxil edin");
  String password = stdin.readLineSync().toString();
  bool isSearching = true;
  UserModel? findedUser;
  for (UserModel user in mylist) {
    if (user.userName == username && user.password == password) {
      isSearching = false;
      findedUser = user;
    }
  }

  if (isSearching) {
    print("bele bir istifadeci yoxdur, yeniden username yazaraq davam edin");
    return login(mylist);
  }
  return findedUser;
}

bool checkUserIsAdmin(UserModel user) {
  bool isAdmin = false;
  if (user is BasicUserModel) {
    print("basic user");
  } else {
    print("admin user");
    isAdmin = true;
  }
  return isAdmin;
}

void openPanel(bool isAdmin, UserModel user, List<VehicleModel> vehicles) {
  if (isAdmin) {
    AdminLogin(user);
  } else {
    UserLogin(user, vehicles);
  }
}

void UserLogin(UserModel user, List<VehicleModel> vehicles) {
  print("xosgeldin user ${user.name}");
  user.login(vehicles);
}

void AdminLogin(UserModel user) {
  print("xosgeldin admin ${user.name}");
  print("secim edin");
}

void adminChoice() {
  print("1 - addproduct");
  print("2 - deleteproduct");
  print("3 - editproduct");
  print("4 - adduser");
  print("5 - deleteuser");
  print("6 - edituser");
  String input = stdin.readLineSync().toString();
  int? choice;
  try {
    choice = int.tryParse(input);
    switch (choice) {
      case 1:
        addProduct();
      case 2:
        deleteProduct();
      case 3:
        editProduct();
      case 4:
        addUser();
      case 5:
        deleteUser();
      case 6:
        editUser();
      default:
        print("yanlis secim");
        adminChoice();
    }
  } catch (e) {
    print("yanlis secim");
    adminChoice();
  }
}

addUser() {
  String age = stdin.readLineSync().toString();
  int userage = int.parse(age);
  String username = stdin.readLineSync().toString();
  String usersurname = stdin.readLineSync().toString();
  String password = stdin.readLineSync().toString();
  String name = stdin.readLineSync().toString();
  String type = stdin.readLineSync().toString().toLowerCase();
  UserModel? user;
  switch (type) {
    case "admin":
      user = AdminModelTask(
          age: userage,
          userName: username,
          userSurName: usersurname,
          password: password,
          name: name);
    default:
      user = BasicUserModel(
          age: userage,
          userName: username,
          userSurName: usersurname,
          password: password,
          name: name);
  }
  mylist.add(user);
}

deleteUser() {}

editUser() {}
addProduct() {}
deleteProduct() {}

editProduct() {}
