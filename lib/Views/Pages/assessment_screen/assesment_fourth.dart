import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/assessment_screen/assesment_five.dart';

import '../../Components/assesment_fourth_rate.dart';
import '../../Components/assessment_bar.dart';
import '../../Components/assessment_btn.dart';

class AssesmentFourth extends StatefulWidget {
  const AssesmentFourth({super.key});

  @override
  State<AssesmentFourth> createState() => _AssesmentFourthState();
}

class _AssesmentFourthState extends State<AssesmentFourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Assessment", "4 of 7"),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                Text(
                  "How would you rate your",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "stress level?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                const AssesmetFourthRate(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, screenWidth * 0.03, 0, 0),
                  child: Text(
                    "You’re Extremely Stressed Out.",
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.35,
                ),
                buildContinueButton(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AssesmentFive(),
                      ),
                    );
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
