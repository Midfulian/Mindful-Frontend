import 'package:flutter/material.dart';

Widget buildContinueButton(BuildContext context, VoidCallback onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF1565C0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 15,
      ),
    ),
    onPressed: onTap,
    child: const Text(
      'Continue',
      style: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}
