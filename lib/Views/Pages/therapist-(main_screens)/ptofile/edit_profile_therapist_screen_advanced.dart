import 'package:flutter/material.dart';
import 'package:mindful/Views/Components/Therapist_commponents/areas_checkbox_component.dart';
import 'package:mindful/Views/Components/Therapist_commponents/dicard_btn_component.dart';
import 'package:mindful/Views/Components/Therapist_commponents/nav_edit_component_advanced.dart';
import 'package:mindful/Views/Components/save_btn_component.dart';

class EditProfileTherapistAdvanced extends StatelessWidget {
  const EditProfileTherapistAdvanced({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, screenWidth * 0.05, 0, 0),
          child: Text(
            "Update your profile details",
            style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;
          return Column(
            children: [
              NavComponentAdvanced(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, screenWidth * 0.05, screenWidth * 0.62, 0),
                child: Text(
                  "Areas of interests",
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontFamily: 'Robot',
                      fontWeight: FontWeight.w600),
                ),
              ),
              AreasCheckBoxComponent(),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, screenWidth * 0.05, screenWidth * 0.68, 0),
                child: Text(
                  "Session price",
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontFamily: 'Robot',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.05, screenWidth * 0.02, 0, 0),
                        child: Text(
                          "Video session",
                          style: TextStyle(
                              fontFamily: 'Robot',
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.1, screenWidth * 0.02, 0, 0),
                        child: Container(
                          width: screenWidth * 0.25,
                          height: screenWidth * 0.1,
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02,
                              screenWidth * 0.02,
                              screenWidth * 0.02,
                              screenWidth * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 240, 237, 237),
                          ),
                          child: Center(
                            child: Text(
                              "15",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.08, screenWidth * 0.02, 0, 0),
                        child: Text("EGP",
                            style: TextStyle(
                                fontFamily: 'Robot',
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.05, screenWidth * 0.02, 0, 0),
                        child: Text(
                          "Audio session",
                          style: TextStyle(
                              fontFamily: 'Robot',
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.1, screenWidth * 0.02, 0, 0),
                        child: Container(
                          width: screenWidth * 0.25,
                          height: screenWidth * 0.1,
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02,
                              screenWidth * 0.02,
                              screenWidth * 0.02,
                              screenWidth * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 240, 237, 237),
                          ),
                          child: Center(
                            child: Text(
                              "15",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.08, screenWidth * 0.02, 0, 0),
                        child: Text("EGP",
                            style: TextStyle(
                                fontFamily: 'Robot',
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.05, screenWidth * 0.02, 0, 0),
                        child: Text(
                          "Chat session",
                          style: TextStyle(
                              fontFamily: 'Robot',
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.12, screenWidth * 0.02, 0, 0),
                        child: Container(
                          width: screenWidth * 0.25,
                          height: screenWidth * 0.1,
                          padding: EdgeInsets.fromLTRB(
                              screenWidth * 0.02,
                              screenWidth * 0.02,
                              screenWidth * 0.02,
                              screenWidth * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color.fromARGB(255, 240, 237, 237),
                          ),
                          child: Center(
                            child: Text(
                              "15",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.08, screenWidth * 0.02, 0, 0),
                        child: Text("EGP",
                            style: TextStyle(
                                fontFamily: 'Robot',
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  SaveButton(),
                  DiscardButton(),
                ],
              )
            ],
          );
        }),
      ),
    );
  }
}
