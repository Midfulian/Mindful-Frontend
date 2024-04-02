import 'package:flutter/material.dart';

class AssessmentSixthQuestions extends StatefulWidget {
  const AssessmentSixthQuestions({Key? key}) : super(key: key);

  @override
  AssessmentSixthQuestionsState createState() =>
      AssessmentSixthQuestionsState();
}

class AssessmentSixthQuestionsState extends State<AssessmentSixthQuestions> {
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
            "Yes",
          ),
          buildQuestionRow(
            screenWidth,
            screenHeight,
            2,
            "No",
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
