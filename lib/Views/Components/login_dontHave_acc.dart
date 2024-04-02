import 'package:flutter/material.dart';

Widget buildRowDonHaveAcc() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Don’t have an account ?',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                color: Color(0xFF2196F3),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            TextSpan(
              text: 'Sign up',
              style: TextStyle(
                color: Color(0xFF3498DB),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
