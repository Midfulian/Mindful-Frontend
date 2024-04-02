import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Row(
        children: [
          SizedBox(width: 5),
          Icon(Icons.arrow_back, color: Colors.blue, size: 15),
          SizedBox(width: 4),
          Text(
            'Back',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
    title: const Text(
      'Forgot Password',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Open Sans',
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
  );
}
