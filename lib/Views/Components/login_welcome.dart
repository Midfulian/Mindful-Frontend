import 'package:flutter/material.dart';

Widget buildWelcome() {
  return const Stack(
    alignment: Alignment.center,
    children: [
      Image(
        image: AssetImage('sda  ` '),
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome back !',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'login to improve your mental health.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  );
}
