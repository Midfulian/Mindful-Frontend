import 'package:flutter/material.dart';
import 'package:mindful/Views/Components/assesment_fourth_rate.dart';
import 'package:mindful/Views/Components/assessment_bar.dart';
import 'package:mindful/Views/Components/assessment_btn.dart';
import 'assesment_five.dart';

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
                  "How would you rate your",
                  style: TextStyle(
                    fontSize: 16 * textScaleFactor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "stress level?",
                  style: TextStyle(
                    fontSize: 16 * textScaleFactor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                const AssesmetFourthRate(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                  child: Text(
                    "You’re Extremely Stressed Out.",
                    style: TextStyle(
                      fontSize: 14 * textScaleFactor,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.35,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                  child: buildContinueButton(
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AssesmentFive(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}