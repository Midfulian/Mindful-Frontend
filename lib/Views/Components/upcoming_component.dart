import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/TherapistPage/main_screen/past_session.dart';

class UpcomingSessionComp extends StatefulWidget {
  const UpcomingSessionComp({super.key});

  @override
  State<UpcomingSessionComp> createState() => _UpcomingSession();
}

class _UpcomingSession extends State<UpcomingSessionComp> {
  bool _isPressed = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.fromLTRB(screenWidth * 0.05, screenWidth * 0.05, 0, 0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
            child: Column(
              children: [
                Text(
                  "Upcoming",
                  style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      color: _isPressed ? Colors.blue : Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                if (_isPressed)
                  Container(
                    height: 2,
                    width: screenWidth * 0.3,
                    color: Colors.blue,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.1, 0, 0, 0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isPressed = !_isPressed;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PastSession(),
                    ),
                  );
                });
              },
              child: Column(
                children: [
                  Text(
                    "Past",
                    style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: _isPressed ? Colors.black : Colors.blue,
                        fontWeight: FontWeight.w400),
                  ),
                  if (!_isPressed)
                    Container(
                      height: 2,
                      width: screenWidth * 0.3,
                      color: Colors.blue,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}