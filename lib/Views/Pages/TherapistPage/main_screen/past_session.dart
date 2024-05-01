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

    Widget buildContainer(BuildContext context, IconData trailingIcon,
        IconData Rowicon, String s) {
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
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.06, 0, 0, screenWidth * 0.1),
                        child: IconButton(
                          icon: Icon(trailingIcon),
                          color: Colors.blue,
                          onPressed: () {},
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
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.07, 0, 0, screenWidth * 0.01),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Rowicon),
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, screenWidth * 0.01),
                    child: Text("$s"),
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
                          Icons.file_copy,
                          Icons.chat_rounded,
                          " This session was a chat session"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                      child: buildContainer(
                          context,
                          Icons.file_copy,
                          Icons.video_call_rounded,
                          "This session was a video call session"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, screenWidth * 0.04, 0, 0),
                      child: buildContainer(
                          context,
                          Icons.file_copy,
                          Icons.mic_none_rounded,
                          "This session was an audio session"),
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
