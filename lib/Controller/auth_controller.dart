import 'package:firebase_auth/firebase_auth.dart';
import 'package:mindful/Model/LoginUserRequest.dart';
import 'package:dio/dio.dart';
import 'package:mindful/Model/RegisterUserRequest.dart';

import '../Model/SignupUserRequest.dart';
import '../Model/enums/AccountType.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Dio _dio = Dio();

  static const _APIBase = 'http://10.80.2.71:3000/auth';
  static const _APILogin = '$_APIBase/login';
  static const _APISignUp = '$_APIBase/signup';

  Future<void> login(String email, String password) async {
    LoginUserRequest loginUserRequest = LoginUserRequest();

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      loginUserRequest.idToken = (await userCredential.user!.getIdToken())!;
      loginUserRequest.role = AccountType.USER;

      final data = loginUserRequest.toJson();

      print(data);

      await _dio.post(_APILogin, data: data);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      } else {
        throw Exception(e);
      }
    }
  }

  Future<bool> signUp(SignUserRequest user, String password) async {
    try {
      RegisterUserRequest registerUserRequest = RegisterUserRequest();

      registerUserRequest.data = user;
      registerUserRequest.password = password;
      registerUserRequest.role = AccountType.USER.toString().split('.').last;
      registerUserRequest.data.photoURL = user.photoURL;
      registerUserRequest.data.profile_picture = user.profile_picture;

      print('==================================');
      print(registerUserRequest.toJson());

      var response = await _dio.post(_APISignUp, data: registerUserRequest.toJson());

      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
