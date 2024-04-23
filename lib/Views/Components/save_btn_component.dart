import 'package:flutter/material.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({super.key});

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: screenWidth * 0.1,
          left: screenWidth * 0.02,
          right: screenWidth * 0.02),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(21, 101, 192, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(double.infinity, screenWidth * 0.13),
        ),
        child: Text(
          "Save changes",
          style: TextStyle(
            fontSize: screenWidth * 0.047,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {}
        },
      ),
    );
  }
}
