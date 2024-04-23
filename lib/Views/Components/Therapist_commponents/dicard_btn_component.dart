import 'package:flutter/material.dart';

class DiscardButton extends StatefulWidget {
  const DiscardButton({super.key});

  @override
  State<DiscardButton> createState() => _DiscardButtonState();
}

class _DiscardButtonState extends State<DiscardButton> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.02),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 162, 162, 163),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(double.infinity, screenWidth * 0.13),
        ),
        onPressed: () {},
        child: Text(
          "Discard changes",
          style: TextStyle(
            fontSize: screenWidth * 0.045,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
