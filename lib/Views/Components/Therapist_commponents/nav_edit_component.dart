import 'package:flutter/material.dart';
import 'package:mindful/Views/Pages/therapist-(main_screens)/ptofile/edit_profile_therapist_screen_advanced.dart';

class NavComponent extends StatefulWidget {
  const NavComponent({super.key});

  @override
  State<NavComponent> createState() => _NavComponentState();
}

class _NavComponentState extends State<NavComponent> {
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
                  "Basic info",
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
                      builder: (context) => EditProfileTherapistAdvanced(),
                    ),
                  );
                });
              },
              child: Column(
                children: [
                  Text(
                    "Advanced",
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
