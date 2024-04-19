import 'UserModel.dart';
import 'VehicleModel.dart';

class BasicUserModel extends UserModel {
  BasicUserModel(
      {required super.age,
      required super.userName,
      required super.userSurName,
      required super.name,
      required super.password});

  @override
  void login(List<VehicleModel> productlist) {
    for (var i = 0; i < productlist.length; i++) {
      VehicleModel product = productlist[i];
      product.show(i);
    }
  }
}
