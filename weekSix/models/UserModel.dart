import 'VehicleModel.dart';

abstract class UserModel {
//! User sinfi user-in adını, soyadını, yaşını özündə əks etdirməlidir.
  String userName;
  String userSurName;
  int age;
  String password;
  String name;
  UserModel({
    required this.age,
    required this.userName,
    required this.userSurName,
    required this.name,
    required this.password,
  });
  //!  User sinfinin login adında davranışı da olmalıdır.

 void login(List<VehicleModel> productlist){

 }
}
