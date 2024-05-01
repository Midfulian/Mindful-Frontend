import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/assessment_bar.dart';
import 'package:gr_project/Views/Components/assessment_btn.dart';

import 'assesment_third.dart';

class AssessmentSecond extends StatefulWidget {
  const AssessmentSecond({super.key});

  @override
  State<AssessmentSecond> createState() => _AssessmentSecondState();
}

class _AssessmentSecondState extends State<AssessmentSecond> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Assessment", "2 of 7"),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = MediaQuery.of(context).size.width;
          final double screenHeight = MediaQuery.of(context).size.height;
          final double textScaleFactor = MediaQuery.of(context).textScaleFactor;

          return Column(
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
                "sleep quality?",
                style: TextStyle(
                  fontSize: 16 * textScaleFactor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildColumn("Excellent", "7-9 hours",
                                "assets/images/small_clock.png", textScaleFactor),
                            buildColumn("Good", "6-7 hours",
                                "assets/images/small_clock.png", textScaleFactor),
                            buildColumn("Fair", "5 hours",
                                "assets/images/small_clock.png", textScaleFactor),
                            buildColumn("Poor", "3-4 hours",
                                "assets/images/small_clock.png", textScaleFactor),
                            buildColumn("Worst", "<3 hours",
                                "assets/images/small_clock.png", textScaleFactor),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackShape: const RoundedRectSliderTrackShape(),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 20.0),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 28.0),
                            ),
                            child: Slider(
                              min: 0,
                              max: 4,
                              divisions: 4,
                              onChanged: (double value) {
                                setState(() {
                                  _value = value;
                                  print(_value);
                                });
                              },
                              value: _value,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                  'assets/images/Solid mood overjoyed.png'),
                              Image.asset('assets/images/Solid mood happy.png'),
                              Image.asset(
                                  'assets/images/Solid mood neutral.png'),
                              Image.asset('assets/images/Solid mood sad.png'),
                              Image.asset(
                                  'assets/images/Solid mood depressed.png'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                child: buildContinueButton(
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssesmentThird()));
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Column buildColumn(String text1, String text2, String image, double textScaleFactor) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 14 * textScaleFactor,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Image(
                  image: AssetImage(image),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  text2,
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 14 * textScaleFactor,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}