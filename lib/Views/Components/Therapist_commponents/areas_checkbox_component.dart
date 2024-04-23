import 'package:flutter/material.dart';

class AreasCheckBoxComponent extends StatefulWidget {
  const AreasCheckBoxComponent({super.key});

  @override
  State<AreasCheckBoxComponent> createState() => _AreasCheckBoxComponentState();
}

class _AreasCheckBoxComponentState extends State<AreasCheckBoxComponent> {
  bool firstValue = false;
  bool secondValue = false;
  bool thirdValue = false;
  bool fourthValue = false;
  bool fifthValue = false;
  bool sixthValue = false;
  bool sevenValue = false;
  bool eightValue = false;
  bool nineValue = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                value: firstValue,
                onChanged: (value) {
                  setState(() {
                    firstValue = value!;
                  });
                }),
            Text("All Specializations"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: secondValue,
                onChanged: (value) {
                  setState(() {
                    secondValue = value!;
                  });
                }),
            Text("Old age disorders"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: thirdValue,
                onChanged: (value) {
                  setState(() {
                    thirdValue = value!;
                  });
                }),
            Text("Personality disorders"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: fourthValue,
                onChanged: (value) {
                  setState(() {
                    fourthValue = value!;
                  });
                }),
            Text("Panic disorders"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: fifthValue,
                onChanged: (value) {
                  setState(() {
                    fifthValue = value!;
                  });
                }),
            Text("Mood disorders (depression)"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: sixthValue,
                onChanged: (value) {
                  setState(() {
                    sixthValue = value!;
                  });
                }),
            Text("Child disorders"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: sevenValue,
                onChanged: (value) {
                  setState(() {
                    sevenValue = value!;
                  });
                }),
            Text("Relations/Family counseling"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: eightValue,
                onChanged: (value) {
                  setState(() {
                    eightValue = value!;
                  });
                }),
            Text("Anxiety disorders and obsessions"),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: nineValue,
                onChanged: (value) {
                  setState(() {
                    nineValue = value!;
                  });
                }),
            Text("Marriage Counselling/Relationship Disorders"),
          ],
        ),
      ],
    );
  }
}
