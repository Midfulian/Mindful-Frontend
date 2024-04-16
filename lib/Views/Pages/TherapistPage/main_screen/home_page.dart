import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/Reviews_commponent.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/TotalSessions_component.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/impact_component.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/session_component.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/welcome_component.dart';
import 'package:gr_project/Views/Pages/notifications_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, screenWidth * 0.02, 0, 0),
              child: Image.asset(
                "assets/images/Photo.png",
                width: screenWidth * 0.1,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.27, screenWidth * 0.02, 0, 0),
              child: Text("Home",
                  style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsScreen(),
                ),
              );
            },
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.1, 0),
              child: Icon(
                Icons.notifications_none,
                size: screenWidth * 0.1,
              ),
            ),
            color: Colors.black,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double screenWidth = constraints.maxWidth;
              final double screenHeight = constraints.maxHeight;
              return Column(
                children: [
                  WelcomeComponent(),
                  SessionComponent(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.03,
                        screenWidth * 0.03, screenWidth * 0.03, 0),
                    child: Container(
                      width: screenWidth,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0.05),
                            )
                          ]),
                      child: Column(children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0, screenWidth * 0.02, 0, 0),
                          child: Image(
                            image: AssetImage("assets/images/puzzel.png"),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "You have a free day!",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  0, 0, 0, screenWidth * 0.03),
                              child: Text(
                                "It’s all clear , relax and recharge.",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                  ImpactComponent(),
                  TotalSessionsComponent(),
                  ReviewsComponent(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
