import 'package:flutter/material.dart';
import 'package:mindful/Views/Components/assessment_bar.dart';
import 'package:mindful/Views/Components/assessment_btn.dart';
import 'package:mindful/Views/Components/assessment_sixth_questions.dart';
import 'assessment_seventh.dart';

class AssessmentSixth extends StatefulWidget {
  const AssessmentSixth({Key? key}) : super(key: key);

  @override
  State<AssessmentSixth> createState() => _AssessmentSixthState();
}

class _AssessmentSixthState extends State<AssessmentSixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Assessment", "6 of 7"),
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
                  "Have you sought ",
                  style: TextStyle(
                    fontSize: 16 * textScaleFactor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "professional help before?",
                  style: TextStyle(
                    fontSize: 16 * textScaleFactor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                const AssessmentSixthQuestions(),
                SizedBox(
                  height: screenHeight * 0.37,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                  child: buildContinueButton(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssessmentSeventh()));
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