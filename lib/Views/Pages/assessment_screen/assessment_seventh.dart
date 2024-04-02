import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assessment_btn.dart';

import '../../Components/assessment_bar.dart';
import '../../Components/assessment_seventh_questions.dart';
import '../main_screens/Nav_screen.dart';

class AssessmentSeventh extends StatefulWidget {
  const AssessmentSeventh({super.key});

  @override
  State<AssessmentSeventh> createState() => _AssessmentSeventhState();
}

class _AssessmentSeventhState extends State<AssessmentSeventh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Assessment", "7 of 7"),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = constraints.maxWidth;
        final double screenHeight = constraints.maxHeight;

        return Column(
          children: [
            SizedBox(
              height: screenHeight * 0.07,
            ),
            Text(
              "Are you taking any ",
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "medications ?",
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            AssessmentSeventhQuestions(),
            SizedBox(
              height: screenHeight * 0.23,
            ),
            buildContinueButton(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const myBottomNavBar()));
            }),
          ],
        );
      }),
    );
  }
}
