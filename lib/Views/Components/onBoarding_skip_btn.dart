// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mindful/Views/Pages/user&therapist-(start,login,reset_password,onBoarding,notifications)/start_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget buildSkipButton(BuildContext context) {
  return TextButton(
    child: const Text('Skip',
        style: TextStyle(color: Colors.white, fontSize: 18)),
    onPressed: () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('seen_onboarding', true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => StartScreen()),
      );
    },
  );
}
