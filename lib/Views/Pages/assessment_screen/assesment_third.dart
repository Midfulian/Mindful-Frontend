import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assesment_third_rate.dart';

import '../../Components/assessment_bar.dart';
import '../../Components/assessment_btn.dart';
import 'assesment_fourth.dart';

class AssesmentThird extends StatefulWidget {
  const AssesmentThird({super.key});

  @override
  State<AssesmentThird> createState() => _AssesmentThirdState();
}

class _AssesmentThirdState extends State<AssesmentThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Assessment", "3 of 7"),
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
                  "overall well-being level?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                ),
                const AssesmetThirdRate(),
                SizedBox(
                  height: screenHeight * 0.3,
                ),
                buildContinueButton(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AssesmentFourth(),
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
