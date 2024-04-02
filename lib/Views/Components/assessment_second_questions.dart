import 'package:flutter/material.dart';

class AssessmentSecondQuestions extends StatefulWidget {
  const AssessmentSecondQuestions({super.key});

  @override
  _AssessmentSecondQuestionsState createState() =>
      _AssessmentSecondQuestionsState();
}

class _AssessmentSecondQuestionsState extends State<AssessmentSecondQuestions> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildColumn("Excellent", "7-9 hours", "assets/images/small_clock.png"),
              buildColumn("Good", "6-7 hours", "assets/images/small_clock.png"),
              buildColumn("Fair", "5 hours", "assets/images/small_clock.png"),
              buildColumn("Poor", "3-4 hours", "assets/images/small_clock.png"),
              buildColumn("Worst", "<3 hours", "assets/images/small_clock.png"),
            ],
          ),
          RotatedBox(
            quarterTurns: 3,
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackShape: const RoundedRectSliderTrackShape(),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 20.0),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/Solid mood overjoyed.png'),
              Image.asset('assets/images/Solid mood happy.png'),
              Image.asset('assets/images/Solid mood neutral.png'),
              Image.asset('assets/images/Solid mood sad.png'),
              Image.asset('assets/images/Solid mood depressed.png'),
            ],
          ),
        ],
      ),
    );
  }

  Column buildColumn(String text1, String text2, String image) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        Row(
          children: [
            Image(
              image: AssetImage(image),
            ),
            Text(
              text2,
              style: const TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            )
          ],
        )
      ],
    );
  }
}
