import 'package:flutter/material.dart';

class WelcomeComponent extends StatelessWidget {
  const WelcomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding:
            EdgeInsets.fromLTRB(screenWidth * 0.01, screenWidth * 0.03, 0, 0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              screenWidth * 0.04, screenWidth * 0.01, screenWidth * 0.04, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenWidth * 0.06),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(screenWidth * 0.05, 0, 0, 0),
                        child: Text(
                          'Welcome Mona,',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.05, screenWidth * 0.005, 0, 0),
                        child: Text(
                          'Remember that your words have the ',
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(screenWidth * 0.05, 0, 0, 0),
                        child: Text(
                          'power to heal and inspire.',
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.02, 0, 0, 0),
                  child: Image(
                    image: AssetImage("assets/images/home_image.png"),
                    width: screenWidth * 0.25,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
