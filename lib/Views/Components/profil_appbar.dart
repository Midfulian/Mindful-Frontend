import 'package:flutter/material.dart';

AppBar buildProfileAppBar(BuildContext context, String title) {
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
      title: Padding(
        padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.2, 0, 0, 0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ));
}
