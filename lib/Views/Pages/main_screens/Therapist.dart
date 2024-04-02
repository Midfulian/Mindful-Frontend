import 'package:flutter/material.dart';

import '../book_screen/doctor_profile_screen.dart';
import '../doctor_service_page.dart';

class TherapistPage extends StatelessWidget {
  const TherapistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
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
                                    EdgeInsets.symmetric(vertical: 10.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.format_list_numbered_rtl_rounded),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  TherapistCard(),
                  SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          TherapistCardDown(),
                          if (index != 4) SizedBox(height: 20),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: 20),
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
  const TherapistCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(242, 242, 242, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/Photo.png', width: 35, height: 35),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sahana V",
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Psychologist",
                    style: TextStyle(
                      color: Color.fromRGBO(24, 145, 197, 1),
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 20,
                color: Color.fromRGBO(127, 140, 141, 1),
              ),
              SizedBox(width: 5),
              Text(
                "31st March 2024",
                style: TextStyle(
                  color: Color.fromRGBO(127, 140, 141, 1),
                  fontFamily: "Rubic",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.access_time,
                size: 20,
                color: Color.fromRGBO(127, 140, 141, 1),
              ),
              SizedBox(width: 5),
              Text(
                "7:30 PM-8:30 PM",
                style: TextStyle(
                  color: Color.fromRGBO(127, 140, 141, 1),
                  fontFamily: "Rubic",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('Join now button clicked');
                    // Handle the button click event
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center, // Add this line
                    child: Text(
                      'Join now',
                      style: TextStyle(color: Color.fromRGBO(242, 242, 242, 1)),
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
  const TherapistCardDown({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/Photo.png",
            ),
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
          child: Row(
            children: [
              const Icon(
                Icons.money,
                color: Colors.green,
              ),
              Text(
                "350 EGP",
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
              Text(
                "/ 30 min",
                style: const TextStyle(
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
                        builder: (context) => DoctorProfilePage(),
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
