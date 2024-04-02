import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assessment_bar.dart';
import 'package:gr_project/Views/Components/assessment_btn.dart';

import '../../Components/assessment_first_questions.dart';
import 'assessment_second.dart';

class AssessmentFirst extends StatefulWidget {
  const AssessmentFirst({super.key});

  @override
  State<AssessmentFirst> createState() => _AssessmentFirstState();
}

class _AssessmentFirstState extends State<AssessmentFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Assessment", "1 of 7"),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;

          return SingleChildScrollView(
            // Wrap the Column widget with SingleChildScrollView
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Text(
                  "What’s your health goal ",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "today?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                AssessmentFirstQuestions(),
                SizedBox(
                  height: screenHeight * 0.15,
                ),
                buildContinueButton(
                  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssessmentSecond()));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
