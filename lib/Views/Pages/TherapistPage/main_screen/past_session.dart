import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/past_component.dart';

class PastSession extends StatefulWidget {
  const PastSession({Key? key}) : super(key: key);

  @override
  PastSessionState createState() => PastSessionState();
}

class PastSessionState extends State<PastSession> {
  double _progressValue = 0.0;
  void _updateProgressValue() {
    setState(() {
      _progressValue += 0.1;
      if (_progressValue >= 1.0) {
        _progressValue = 0.0;
      }
    });
  }

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
        String sessionIcon,
        String sessionText) {
      return Padding(
        padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
        child: Container(
          // padding: EdgeInsets.all(16.0),
          width: screenWidth * 0.95,
          //height: screenHeight * 0.2,
          decoration: BoxDecoration(
              color: Color.fromARGB(133, 250, 249, 249),
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
                        screenWidth * 0.03, 0, 0, screenWidth * 0.03),
                    child: Image(
                      image: AssetImage(docImage),
                      width: screenWidth * 0.1,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(screenHeight * 0.0,
                            screenWidth * 0.04, screenWidth * 0.14, 0),
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
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06, 0, 0, screenWidth * 0.1),
                        child: Image(
                          image: AssetImage(trailingIcon),
                          color: Colors.blue,
                          width: screenWidth * 0.05,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(0, 0, 0, screenWidth * 0.1),
                        child: Text(
                          "Attachment",
                          style: TextStyle(
                              fontFamily: "Robot",
                              color: Colors.blue,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.15,
                        screenWidth * 0.02, 0, screenWidth * 0.01),
                    child: Image(
                      image: AssetImage(sessionIcon),
                      color: Colors.black,
                      width: screenWidth * 0.05,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, screenWidth * 0.02, 0, screenWidth * 0.01),
                    child: Text("$sessionText"),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double screenWidth = constraints.maxWidth;
              final double screenHeight = constraints.maxHeight;
              SizedBox(height: 300);
              return Padding(
                padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.03, screenWidth * 0.05, 0, 0),
                      child: PastSessioncomp(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                      child: buildContainer(
                          context,
                          "assets/images/Photo.png",
                          "Mona Ali",
                          "@mona.com",
                          "assets/images/calendar.png",
                          "02 January",
                          "assets/images/clock.png",
                          "12:30 PM",
                          "assets/images/attachment.png",
                          "assets/images/bubble-chat.png",
                          " This session was a chat session"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                      child: buildContainer(
                          context,
                          "assets/images/Photo.png",
                          "Areej Hagag",
                          "@Areej.com",
                          "assets/images/calendar.png",
                          "02 January",
                          "assets/images/clock.png",
                          "12:30 PM",
                          "assets/images/attachment.png",
                          "assets/images/cam-recorder.png",
                          " This session was a video call session"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                      child: buildContainer(
                          context,
                          "assets/images/Photo.png",
                          "Ziad Ezzat",
                          "@Ziad.com",
                          "assets/images/calendar.png",
                          "02 January",
                          "assets/images/clock.png",
                          "12:30 PM",
                          "assets/images/attachment.png",
                          "assets/images/mic.png",
                          " This session was an audio session"),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
