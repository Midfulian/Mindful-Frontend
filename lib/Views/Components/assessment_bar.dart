import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, String title, String actionText) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(
      title,
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.04,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    centerTitle: true, // Add this line to center the title
    actions: [
      Padding(
        padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.05,
            top: MediaQuery.of(context).size.width * 0.05),
        child: Text(
          actionText,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.03,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
      ),
    ],
  );
}
