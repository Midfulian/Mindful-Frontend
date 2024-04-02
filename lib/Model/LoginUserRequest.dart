import 'package:gr_project/Model/enums/AccountType.dart';

class LoginUserRequest {
  late String idToken;
  late AccountType role;

  Map<String,dynamic> toJson() {
    return {
      'idToken': idToken,
      'role': role.toString().split('.').last
    };
  }
}
