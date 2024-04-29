import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/upcoming_component.dart';

class UpcomingSession extends StatefulWidget {
  const UpcomingSession({Key? key}) : super(key: key);

  @override
  UpcomingSessionState createState() => UpcomingSessionState();
}

class UpcomingSessionState extends State<UpcomingSession> {
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

    Widget buildContainer(BuildContext context, IconData trailingIcon) {
      return Padding(
        padding:
            EdgeInsets.fromLTRB(screenWidth * 0.02, 0, screenWidth * 0.02, 0),
        child: Container(
          // padding: EdgeInsets.all(16.0),
          width: screenWidth * 0.95,
          //height: screenHeight * 0.2,
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
                        screenWidth * 0.03, 0, 0, screenWidth * 0.03),
                    child: Image(
                      image: AssetImage("assets/images/Photo.png"),
                      width: screenWidth * 0.1,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, screenWidth * 0.04, screenWidth * 0.17, 0),
                        child: Text(
                          'Mona Ali',
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
                          '@eslina2022',
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
                            child: Icon(
                              Icons.calendar_today,
                              size: screenWidth * 0.04,
                              color: Colors.black45,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenHeight * 0.01, 0, 0, 0),
                            child: Text(
                              "02 January",
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
                            child: Icon(
                              Icons.access_time,
                              size: screenWidth * 0.04,
                              color: Colors.black45,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.01, 0, 0, 0),
                            child: Text(
                              "7:30 PM",
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
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.23, 0, 0, screenWidth * 0.18),
                    child: IconButton(
                      icon: Icon(trailingIcon),
                      color: Colors.blue,
                      onPressed: () {},
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
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double screenWidth = constraints.maxWidth;
              final double screenHeight = constraints.maxHeight;
              SizedBox(height: 300);
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.03, screenWidth * 0.05, 0, 0),
                    child: UpcomingSessionComp(),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                    child: buildContainer(context, Icons.video_call_rounded),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                    child: buildContainer(context, Icons.chat_rounded),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                    child: buildContainer(context, Icons.mic_none_rounded),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
