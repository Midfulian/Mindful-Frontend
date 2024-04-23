import 'package:flutter/material.dart';

class SelectComponent extends StatelessWidget {
  const SelectComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: screenWidth * 0.1,
          bottom: screenWidth * 0.04,
          left: screenWidth * 0.05),
      child: Row(
        children: [
          Image(
            width: screenWidth * 0.2,
            height: screenWidth * 0.2,
            image: AssetImage('assets/images/Photo.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: screenWidth * 0.02, left: screenWidth * 0.02),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, screenWidth * 0.3, screenWidth * 0.01),
                  child: Text(
                    "Select a file",
                    style: TextStyle(
                        fontSize: screenWidth * 0.036,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        fontFamily: 'Robot'),
                  ),
                ),
                Text(
                  "Make sure the file is below 2MB",
                  style: TextStyle(
                      fontSize: screenWidth * 0.036,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontFamily: 'Open Sans'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
