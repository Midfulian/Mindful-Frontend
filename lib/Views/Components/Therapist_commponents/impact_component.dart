import 'package:flutter/material.dart';

class ImpactComponent extends StatelessWidget {
  const ImpactComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.fromLTRB(0, screenWidth * 0.03, screenWidth * 0.35, 0),
      child: Text(
        "Your impact at a glance",
        style: TextStyle(
            fontSize: screenWidth * 0.05, fontWeight: FontWeight.w600),
      ),
    );
  }
}
