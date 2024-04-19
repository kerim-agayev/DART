import 'UserModel.dart';
import 'VehicleModel.dart';

class AdminModelTask extends UserModel {
  AdminModelTask(
      {required super.age,
      required super.userName,
      required super.userSurName,
      required super.password,
      required super.name});

  @override
  void login(List<VehicleModel> productlist);
}
