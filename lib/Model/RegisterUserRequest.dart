import 'SignupUserRequest.dart';

class RegisterUserRequest {
  late SignUserRequest data;
  late String role = 'USER';
  late String password;

  Map<String,dynamic> toJson() {
    return {
      'data': data.toJson(),
      'role': role,
      'password': password,
    };
  }
}
