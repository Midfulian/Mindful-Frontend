import 'package:flutter/material.dart';

class ReviewsComponent extends StatelessWidget {
  const ReviewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          screenWidth * 0.03, screenWidth * 0.03, screenWidth * 0.05, 0),
      child: Container(
        width: screenWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 1),
              ),
            ]),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.05, screenWidth * 0.02, 0, 0),
                child: Text(
                  "Reviews",
                  style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.4, screenWidth * 0.01, 0, 0),
                    child: Text(
                      "0 ",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.0, screenWidth * 0.02, 0, 0),
                    child: Text(
                      "rates this month",
                      style: TextStyle(
                          color: Colors.grey, fontSize: screenWidth * 0.03),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.15, screenWidth * 0.05, 0, screenWidth * 0.04),
            child: Text(
              "No data to display ",
              style: TextStyle(fontSize: screenWidth * 0.04),
            ),
          )
        ]),
      ),
    );
  }
}
