import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/user&therapist-(start,login,reset_password,onBoarding,notifications)/call_screen.dart';
import 'package:gr_project/Views/Pages/user-(doctor_profile,doctor_appointment,payment,test,result)/doctor_profile_user_screen.dart';

import '../doctor_service_page.dart';

class UserTherapistsPage extends StatelessWidget {
  const UserTherapistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: screenHeight * 0.04,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search',
                                border: InputBorder.none,
                                contentPadding:
                                EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Icon(Icons.format_list_numbered_rtl_rounded),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  const TherapistCard(),
                  SizedBox(height: screenHeight * 0.02),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          TherapistCardDown(),
                          if (index != 4) SizedBox(height: screenHeight * 0.02),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TherapistCard extends StatelessWidget {
  const TherapistCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
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
                    "Psychologist",
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
        ],
      ),
    );
  }
}

class TherapistCardDown extends StatelessWidget {
  const TherapistCardDown({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/Photo.png",
            ),
            radius: screenWidth * 0.1,
          ),
          title: Text(
            "Sahana V",
            style: TextStyle(
              color: Colors.black87,
              fontSize: screenWidth * 0.04,
            ),
          ),
          subtitle: Text(
            "Psychologist",
            style: TextStyle(
              color: Colors.black87,
              fontSize: screenWidth * 0.04,
            ),
          ),
          trailing: TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.star,
              size: screenWidth * 0.05,
              color: Colors.amber,
            ),
            label: Text(
              "Top therapists",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.18),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
                size: screenWidth * 0.04,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: screenWidth * 0.04,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: screenWidth * 0.04,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: screenWidth * 0.04,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: screenWidth * 0.04,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.18),
          child: Text(
            "4 (20 reviews)",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.04, top: screenWidth * 0.01),
          child: const Text(
            "Inerests:",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.02, top: screenWidth * 0.01),
          child: Row(
            children: [
              Container(
                height: screenHeight * 0.05,
                width: screenWidth * 0.3,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade50,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Container(
                height: screenHeight * 0.05,
                width: screenWidth * 0.6,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade50,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    "Specific Phobia and Social Phobia",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.04, top: screenWidth * 0.01),
          child: const Row(
            children: [
              Icon(
                Icons.money,
                color: Colors.green,
              ),
              Text(
                "350 EGP",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              Text(
                "/ 30 min",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.07, top: screenWidth * 0.05),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorServicePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 237, 236, 236),
                ),
                child: const Text(
                  "View profile",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(width: screenWidth * 0.01),
              Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.2, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DoctorProfileUserPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "BooK now",
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
