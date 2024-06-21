import 'package:flutter/material.dart';
import 'package:mindful/Views/Components/Therapist_commponents/Reviews_commponent.dart';
import 'package:mindful/Views/Components/Therapist_commponents/TotalSessions_component.dart';
import 'package:mindful/Views/Components/Therapist_commponents/welcome_component.dart';
import 'package:mindful/Views/Pages/user&therapist-(start,login,reset_password,onBoarding,notifications)/call_screen.dart';
import 'package:mindful/Views/Pages/user&therapist-(start,login,reset_password,onBoarding,notifications)/notifications_screen.dart';

class HomeTherapist extends StatefulWidget {
  const HomeTherapist({super.key});

  @override
  State<HomeTherapist> createState() => _HomeTherapistState();
}

class _HomeTherapistState extends State<HomeTherapist> {
  List<Widget> sessions = [];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: WelcomeComponent(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.08, screenWidth * 0.04, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Your sessions today",
                    style: TextStyle(
                        fontSize: screenWidth * 0.05, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          sessions = [const UserCard(), const UserCard()];
                        });
                      },
                      child: Text(
                        "see all",
                        style: TextStyle(color: Colors.blue, fontSize: screenWidth * 0.035),
                      ),
                    ),
                  )
                ],
              ),
            ),
            sessions.isEmpty
                ? Padding(
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
                    padding: EdgeInsets.fromLTRB(0, screenWidth * 0.02, 0, 0),
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
                        padding:
                        EdgeInsets.fromLTRB(0, 0, 0, screenWidth * 0.03),
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
            )
                : SizedBox(
              height: screenHeight * 0.2,
              child: ListView.builder(
                itemCount: sessions.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return sessions[index];
                },
              ),
            ),
            Padding(
              padding:
              EdgeInsets.fromLTRB(0, screenWidth * 0.03, screenWidth * 0.35, 0),
              child: Text(
                "Your impact at a glance",
                style: TextStyle(
                    fontSize: screenWidth * 0.05, fontWeight: FontWeight.w600),
              ),
            ),
            const TotalSessionsComponent(minutes: 180,),
            ReviewsComponent(),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: screenWidth * 0.8,
        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        decoration: BoxDecoration(
          color: Color.fromRGBO(242, 242, 242, 1),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/Photo.png', width: screenWidth * 0.1, height: screenHeight * 0.05),
              SizedBox(width: screenWidth * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sahana V",
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontFamily: "Roboto",
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "@sahana_v",
                    style: TextStyle(
                      color: Color.fromRGBO(24, 145, 197, 1),
                      fontFamily: "Roboto",
                      fontSize: screenWidth * 0.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: screenWidth * 0.05,
                color: Color.fromRGBO(127, 140, 141, 1),
              ),
              SizedBox(width: screenWidth * 0.01),
              Text(
                "31st March 2024",
                style: TextStyle(
                  color: Color.fromRGBO(127, 140, 141, 1),
                  fontFamily: "Rubic",
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: screenWidth * 0.02),
              Icon(
                Icons.access_time,
                size: screenWidth * 0.05,
                color: Color.fromRGBO(127, 140, 141, 1),
              ),
              SizedBox(width: screenWidth * 0.01),
              Text(
                "7:30 PM-8:30 PM",
                style: TextStyle(
                  color: Color.fromRGBO(127, 140, 141, 1),
                  fontFamily: "Rubic",
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CallPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.05),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center, // Add this line
                    child: Text(
                      'Join now',
                      style: TextStyle(color: Color.fromRGBO(242, 242, 242, 1), fontSize: screenWidth * 0.04),
                    ),
                  ),
                ),
              )
            ],
          ),
         ]),
      );
    }
  }