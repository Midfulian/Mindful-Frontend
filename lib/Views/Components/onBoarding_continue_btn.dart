// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/start_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


Widget buildContinueButton(BuildContext context, PageController pageController, int currentPage, int pageCount) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(21, 101, 192, 1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      padding:
          const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    ),
    child: const Text('Continue',
        style: TextStyle(color: Colors.white, fontSize: 18)),
    onPressed: () async {
      if (currentPage == pageCount - 1) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('seen_onboarding', true);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const StartScreen()),
        );
      } else {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    },
  );
}