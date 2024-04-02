import 'package:flutter/material.dart';

Widget buildStartTestContainer (BuildContext context, double screenWidth, double screenHeight) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0,
          screenWidth * 0.03, screenWidth * 0.02),
      child: Container(
        height: screenHeight * 0.23,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.04,
                      screenWidth * 0.03,
                      0,
                      0),
                  child: Text(
                    "How are you feeling today ?",
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.045,
                      vertical: screenHeight * 0.03),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage(
                          "assets/images/Solid mood overjoyed.png",
                        ),
                        width: screenWidth * 0.09,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01),
                        child: Text(
                          "Happy",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(
                                255, 140, 140, 140),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.045,
                      vertical: screenHeight * 0.03),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage(
                          "assets/images/Solid mood neutral.png",
                        ),
                        width: screenWidth * 0.09,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01),
                        child: Text(
                          "Manic",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(
                                255, 140, 140, 140),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.045,
                      vertical: screenHeight * 0.03),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage(
                          "assets/images/Solid mood sad.png",
                        ),
                        width: screenWidth * 0.09,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01),
                        child: Text(
                          "Angry",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(
                                255, 140, 140, 140),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.045,
                      vertical: screenHeight * 0.001),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage(
                          "assets/images/Solid mood depressed.png",
                        ),
                        width: screenWidth * 0.09,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01),
                        child: Text(
                          "Sad",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(
                                255, 140, 140, 140),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.045,
                      vertical: screenHeight * 0.03),
                  child: Column(
                    children: [
                      Image(
                        image: const AssetImage(
                          "assets/images/Solid mood happy.png",
                        ),
                        width: screenWidth * 0.09,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01),
                        child: Text(
                          "Calm",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(
                                255, 140, 140, 140),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                "Start Your test now",
                style: TextStyle(
                  fontSize: screenWidth * 0.043,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}