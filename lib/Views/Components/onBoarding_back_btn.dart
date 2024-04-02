// ignore_for_file: file_names
import 'package:flutter/material.dart';

Widget buildBackButton(PageController pageController) {
  return TextButton(
    child: const Text('Back',
        style: TextStyle(color: Colors.white, fontSize: 18)),
    onPressed: () {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    },
  );
}