import 'package:flutter/material.dart';

class SessionComponent extends StatelessWidget {
  const SessionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.fromLTRB(screenWidth * 0.08, screenWidth * 0.04, 0, 0),
      child: Row(
        children: [
          Text(
            "Your sessions today",
            style: TextStyle(
                fontSize: screenWidth * 0.05, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.3, 0, 0, 0),
            child: Text(
              "see all",
              style:
                  TextStyle(color: Colors.blue, fontSize: screenWidth * 0.035),
            ),
          )
        ],
      ),
    );
  }
}
