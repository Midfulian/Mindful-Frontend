import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/impact_component.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/session_component.dart';
import 'package:gr_project/Views/Components/Therapist_commponents/welcome_component.dart';
import 'package:gr_project/Views/Pages/user&therapist-(start,login,reset_password,onBoarding,notifications)/notifications_screen.dart';

class HomeOne extends StatefulWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  HomeOneState createState() => HomeOneState();
}

class HomeOneState extends State<HomeOne> {
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
      return Container(
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
        child: ListTile(
          leading: Image.asset(
            "assets/images/Photo.png",
            width: screenWidth * 0.1,
          ),
          title: Text(
            'Mona Ali',
            style: TextStyle(
                color: Color.fromRGBO(51, 51, 51, 1),
                fontFamily: "Robot",
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.05),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@eslina2022',
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: "Robot",
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.04),
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: screenWidth * 0.04,
                    color: Colors.black45,
                  ),
                  Text(
                    "02 January",
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontFamily: "Robot",
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.03),
                  ),
                  Icon(
                    Icons.access_time,
                    size: screenWidth * 0.04,
                    color: Colors.black45,
                  ),
                  Text(
                    "7:30 PM-8:30 PM",
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1),
                        fontFamily: "Robot",
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.03),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, screenHeight * 0.01, 0, 0),
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
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
              ),
            ],
          ),
          trailing: IconButton(
            icon: Icon(trailingIcon),
            color: Colors.blue,
            onPressed: () {},
          ),
        ),
      );
    }

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
                  textDirection: TextDirection.ltr,
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
              SizedBox(height: 300);
              return Column(
                children: [
                  WelcomeComponent(),
                  SessionComponent(),
                  ListView(scrollDirection: Axis.horizontal, children: [
                    buildContainer(context, Icons.video_call_rounded),
                    buildContainer(context, Icons.chat_rounded),
                    buildContainer(context, Icons.mic_none_rounded),
                  ]),
                  ImpactComponent(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
