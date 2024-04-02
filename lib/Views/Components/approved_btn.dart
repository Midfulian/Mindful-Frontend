import 'package:flutter/material.dart';

Widget buildGoToHomeButton() {
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
      child: const Text(
        "Go to Home Page",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
