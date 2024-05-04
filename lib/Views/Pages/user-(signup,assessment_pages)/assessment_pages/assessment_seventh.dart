import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assessment_bar.dart';
import 'package:gr_project/Views/Components/assessment_btn.dart';
import 'package:gr_project/Views/Components/assessment_seventh_questions.dart';
import 'package:gr_project/Views/Pages/user-(main_screens)/Nav_screen.dart';

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
          final double screenWidth = MediaQuery.of(context).size.width;
          final double screenHeight = MediaQuery.of(context).size.height;
          final double textScaleFactor = MediaQuery.of(context).textScaleFactor;

          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Text(
                  "Are you taking any ",
                  style: TextStyle(
                    fontSize: 16 * textScaleFactor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "medications ?",
                  style: TextStyle(
                    fontSize: 16 * textScaleFactor,
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                  child: buildContinueButton(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserBottomNavBar()));
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}