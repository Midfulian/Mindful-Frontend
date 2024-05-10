import 'package:flutter/material.dart';

class UpcomingSession extends StatefulWidget {
  const UpcomingSession({Key? key}) : super(key: key);

  @override
  UpcomingSessionState createState() => UpcomingSessionState();
}

class UpcomingSessionState extends State<UpcomingSession> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    Widget buildContainer(
      BuildContext context,
      String docImage,
      String docName,
      String docEmail,
      String dateImg,
      String date,
      String timeImg,
      String time,
      String trailingIcon,
    ) {
      return Padding(
        padding:
            EdgeInsets.fromLTRB(screenWidth * 0.02, 0, screenWidth * 0.02, 0),
        child: Container(
          width: screenWidth * 0.95,
          decoration: BoxDecoration(
              color: Color.fromARGB(134, 207, 205, 205),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white70,
                  offset: Offset(0, 0.05),
                )
              ]),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.03, 0, 0, screenWidth * 0.07),
                    child: Image(
                      image: AssetImage(docImage),
                      width: screenWidth * 0.1,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(0, 0, screenWidth * 0.1, 0),
                        child: Text(
                          '$docName',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontFamily: "Robot",
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.05),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, 0, screenWidth * 0.17, screenWidth * 0.02),
                        child: Text(
                          '$docEmail',
                          style: TextStyle(
                              color: Color.fromRGBO(51, 51, 51, 1),
                              fontFamily: "Robot",
                              fontWeight: FontWeight.w400,
                              fontSize: screenWidth * 0.035),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenHeight * 0.02, 0, 0, 0),
                            child: Image(
                              image: AssetImage(dateImg),
                              width: screenWidth * 0.04,
                              color: Colors.black45,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenHeight * 0.01, 0, 0, 0),
                            child: Text(
                              "$date",
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontFamily: "Robot",
                                  fontWeight: FontWeight.w600,
                                  fontSize: screenWidth * 0.03),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.03, 0, 0, 0),
                            child: Image(
                              image: AssetImage(timeImg),
                              width: screenWidth * 0.04,
                              color: Colors.black45,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.01, 0, 0, 0),
                            child: Text(
                              "$time",
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                  fontFamily: "Robot",
                                  fontWeight: FontWeight.w600,
                                  fontSize: screenWidth * 0.03),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.23,
                        screenWidth * 0.03, 0, screenWidth * 0.18),
                    child: Image(
                      image: AssetImage(trailingIcon),
                      color: Colors.blue,
                      width: screenWidth * 0.06,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, screenHeight * 0.01),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(screenWidth * 0.9, screenWidth * 0.03),
                    backgroundColor: Colors.blue,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Join now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                  child: buildContainer(
                      context,
                      "assets/images/Photo.png",
                      "Areej Hagag",
                      "@areej.com",
                      "assets/images/calendar.png",
                      "02 January",
                      "assets/images/clock.png",
                      "12:30 PM",
                      "assets/images/cam-recorder.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                  child: buildContainer(
                      context,
                      "assets/images/Photo.png",
                      "Ziad Ezzat",
                      "@areej.com",
                      "assets/images/calendar.png",
                      "02 January",
                      "assets/images/clock.png",
                      "12:30 PM",
                      "assets/images/bubble-chat.png"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                  child: buildContainer(
                      context,
                      "assets/images/Photo.png",
                      "Mona Ali",
                      "@areej.com",
                      "assets/images/calendar.png",
                      "02 January",
                      "assets/images/clock.png",
                      "12:30 PM",
                      "assets/images/mic.png"),
                ),
              ],
            ),
      ),
    );
  }
}
