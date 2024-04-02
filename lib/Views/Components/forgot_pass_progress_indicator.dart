
import 'package:flutter/material.dart';

Widget buildProgressIndicator(Color color) {
    return Container(
      width: 24,
      height: 4,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
    );
  }