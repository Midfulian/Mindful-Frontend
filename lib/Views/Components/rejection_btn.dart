import 'package:flutter/material.dart';

Widget buildBackToSignUpButton(BuildContext context, double screenWidth) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 50,
    child: ElevatedButton(
      onPressed: () {
        // Add your logic here
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(
        "Back to Sign Up",
        style: TextStyle(
          fontSize: screenWidth * 0.04,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
