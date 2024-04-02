import 'package:flutter/material.dart';

class AssesmetFourthRate extends StatefulWidget {
  const AssesmetFourthRate({super.key});

  @override
  _AssesmetFourthRateState createState() => _AssesmetFourthRateState();
}

class _AssesmetFourthRateState extends State<AssesmetFourthRate> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text(
          selectedIndex == 0 ? 'Low' : (selectedIndex == 1 ? 'Medium' : 'High'),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.1,
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                  //print(0);
                },
                child: Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:
                        selectedIndex == 0 ? Colors.blue : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          selectedIndex == 0 ? Colors.grey : Colors.transparent,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    "Low",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w600,
                      color: selectedIndex == 0 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                  print(1);
                },
                child: Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:
                        selectedIndex == 1 ? Colors.blue : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          selectedIndex == 1 ? Colors.grey : Colors.transparent,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    "Medium",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w600,
                      color: selectedIndex == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                  //print(2);
                },
                child: Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:
                        selectedIndex == 2 ? Colors.blue : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          selectedIndex == 2 ? Colors.grey : Colors.transparent,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    "High",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w600,
                      color: selectedIndex == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
