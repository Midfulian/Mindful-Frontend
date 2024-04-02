import 'package:flutter/material.dart';

class AssesmetThirdRate extends StatefulWidget {
  const AssesmetThirdRate({Key? key}) : super(key: key);

  @override
  State<AssesmetThirdRate> createState() => _AssesmetThirdRateState();
}

class _AssesmetThirdRateState extends State<AssesmetThirdRate> {
  int selectedNumber = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text(
          "$selectedNumber",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding:
              EdgeInsets.fromLTRB(screenWidth * 0.0, 0, screenWidth * 0.02, 0),
          margin:
              EdgeInsets.fromLTRB(screenWidth * 0.05, 0, screenWidth * 0.05, 0),
          height: screenHeight * 0.1,
          width: screenWidth * 0.77,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 242, 241, 241),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 1; i <= 5; i++) btn(i, screenWidth),
            ],
          ),
        ),
      ],
    );
  }

  Widget btn(int i, double screenWidth) {
    bool isSelected = selectedNumber == i;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedNumber = i;
          //print(i);
        });
      },
      child: Container(
        height: screenWidth * 0.15,
        width: screenWidth * 0.15,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? Colors.grey : Colors.transparent,
          ),
        ),
        child: Text(
          i.toString(),
          style: TextStyle(
            fontSize: screenWidth * 0.065,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
