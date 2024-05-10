import 'package:flutter/material.dart';
import 'package:mindful/Views/Pages/therapist-(main_screens)/therapist_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Pages/user&therapist-(start,login,reset_password,onBoarding,notifications)/login_screen.dart';

Widget buildStartButton(bool isUserSelected, BuildContext context) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    margin: const EdgeInsets.symmetric(vertical: 50),
    height: 50,
    child: ElevatedButton(
      onPressed: () async {
        if (isUserSelected) {
          print('User');
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('seen_start_screen', true);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen(userType: 'user')),
          );
        } else {
          print('Doctor');
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setBool('seen_start_screen', true);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen(userType: 'therapist')),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: const Text(
        "Get started",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
