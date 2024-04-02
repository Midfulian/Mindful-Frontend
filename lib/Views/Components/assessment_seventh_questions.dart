import 'package:flutter/material.dart';

class AssessmentSeventhQuestions extends StatefulWidget {
  const AssessmentSeventhQuestions({super.key});

  @override
  _AssessmentSeventhQuestionsState createState() =>
      _AssessmentSeventhQuestionsState();
}

class _AssessmentSeventhQuestionsState extends State<AssessmentSeventhQuestions> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildQuestionRow(
          screenWidth,
          screenHeight,
          1,
          "Prescribed Medications",
          "assets/images/Monotone drug container.png",
        ),
        buildQuestionRow(
          screenWidth,
          screenHeight,
          2,
          "Over the Counter Supplements",
          "assets/images/Monotone drug store.png",
        ),
        buildQuestionRow(
          screenWidth,
          screenHeight,
          3,
          "I’m not taking any",
          "assets/images/Monotone pill round.png",
        ),
        buildQuestionRow(
          screenWidth,
          screenHeight,
          4,
          "Prefer not to say",
          "assets/images/Monotone close.png",
        ),
      ],
    );
  }

  Widget buildQuestionRow(
      double screenWidth,
      double screenHeight,
      int value,
      String text,
      String imagePath,
      ) {
    bool isSelected = _value == value;

    return GestureDetector(
      onTap: () {
        setState(() {
          _value = value;
        });
      },
      child: Padding(
        padding:
        EdgeInsets.fromLTRB(screenWidth * 0.08, 0, 0, screenWidth * 0.02),
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.07, 0),
          padding: EdgeInsets.fromLTRB(
            screenWidth * 0.001,
            screenWidth * 0.001,
            screenWidth * 0.001,
            0,
          ),
          height: screenHeight * 0.07,
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.02,
                  0,
                  screenWidth * 0.01,
                  0,
                ),
                child: Image.asset(
                  imagePath,
                  width: screenHeight * 0.03,
                  height: screenHeight * 0.05,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.04, 0, 0, 0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.18, 0, 0, 0),
                child: Radio(
                  value: value,
                  groupValue: _value,
                  activeColor: Colors.white,
                  onChanged: (int? value) {
                    setState(() {
                      _value = value ?? 0;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}