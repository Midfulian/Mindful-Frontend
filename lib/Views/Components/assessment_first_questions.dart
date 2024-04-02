import 'package:flutter/material.dart';

class AssessmentFirstQuestions extends StatefulWidget {
  const AssessmentFirstQuestions({super.key});

  @override
  _AssessmentFirstQuestionsState createState() =>
      _AssessmentFirstQuestionsState();
}

class _AssessmentFirstQuestionsState extends State<AssessmentFirstQuestions> {
  int _selectedRow = -1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildQuestionRow(
            screenWidth,
            screenHeight,
            1,
            "I wanna reduce stress",
            "assets/images/Solid heart.png",
          ),
          buildQuestionRow(
            screenWidth,
            screenHeight,
            2,
            "I wanna try AI Therapy",
            "assets/images/Solid robot.png",
          ),
          buildQuestionRow(
            screenWidth,
            screenHeight,
            3,
            "I want to cope with trauma",
            "assets/images/Solid flag.png",
          ),
          buildQuestionRow(
            screenWidth,
            screenHeight,
            4,
            "I want to be a better person",
            "assets/images/Solid mood happy.png",
          ),
          buildQuestionRow(
            screenWidth,
            screenHeight,
            5,
            "Just trying out the app, mate!",
            "assets/images/Solid mobile.png",
          ),
        ],
      ),
    );
  }

  Widget buildQuestionRow(
    double screenWidth,
    double screenHeight,
    int value,
    String text,
    String imagePath,
  ) {
    bool isSelected = _selectedRow == value;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedRow = value;
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
                  groupValue: _selectedRow,
                  activeColor: Colors.white,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedRow = value ?? 0;
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
