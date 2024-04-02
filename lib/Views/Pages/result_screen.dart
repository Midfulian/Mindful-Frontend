import 'package:flutter/material.dart';

import 'book_screen/doctor_profile_screen.dart';
import 'doctor_service_page.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int score = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Depression, Anxiety and Stress Scale',
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            color: Colors.grey[300],
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Your Result is $score/50 \n',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      scoreBox('Normal', Colors.green, 0, 10),
                      scoreBox('Mid', Colors.yellow, 11, 20),
                      scoreBox('Moderate', Colors.orange, 21, 30),
                      scoreBox('Severe', Colors.red, 31, 40),
                      scoreBox('Extremely Severe', Colors.red, 41, 50),
                    ],
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'What dose it mean\n',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Text messages are used for personal, family, business, and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages became an accepted part of many cultures, as happened earlier with...',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[850],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
          color: Colors.grey[300],
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Recommended Therapists',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[850],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 20),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TherapistCardDown()),
                          if (index != 4) SizedBox(height: 20),
                        ],
                      );
                    },
                  ),
              ],
            ),
          ),
        )
        ],
      ),
    );
  }

  Widget scoreBox(String label, Color color, int minScore, int maxScore) {
    return Column(
      children: [
        if (score >= minScore && score <= maxScore)
          Icon(Icons.arrow_drop_down, color: color, size: 30),
        Container(
          height: 30,
          decoration: BoxDecoration(
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
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