import 'package:flutter/material.dart';

import '../Components/rejection_btn.dart';

class RejectionScreen extends StatelessWidget {
  const RejectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;

          return Column(
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Rejection !",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Image(
                image: const AssetImage("assets/images/prohibition sign.png"),
                width: screenWidth * 0.5,
                height: screenHeight * 0.2,
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text(
                "We appreciate your request, but unfortunately,",
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "it didn't align with our current criteria. Please",
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "read the rejection reason and try again.",
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.05,
                  0,
                  screenWidth * 0.3,
                  screenHeight * 0.02,
                ),
                child: Text(
                  "The rejection reasons are: ",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  screenWidth * 0.4,
                  screenHeight * 0.01,
                ),
                child: Text(
                  "Unclear ID",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  screenWidth * 0.4,
                  screenHeight * 0.01,
                ),
                child: Text(
                  "Unclear ID",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  screenWidth * 0.4,
                  screenHeight * 0.01,
                ),
                child: Text(
                  "Unclear ID",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  screenWidth * 0.4,
                  screenHeight * 0.01,
                ),
                child: Text(
                  "Unclear ID",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              buildBackToSignUpButton(context, screenWidth),
            ],
          );
        },
      ),
    );
  }
}
