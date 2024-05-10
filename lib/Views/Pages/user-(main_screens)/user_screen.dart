import 'package:flutter/material.dart';
import 'package:mindful/Views/Pages/user-(main_screens)/profile/profile_user_screen.dart';

import 'my_space_screens/my_space_user_screen.dart';
import 'therapist_user_screen.dart';
import 'home_user_screen.dart';

class UserBottomNavBar extends StatefulWidget {
  const UserBottomNavBar({super.key});

  @override
  State<UserBottomNavBar> createState() => _UserBottomNavBarState();
}

class _UserBottomNavBarState extends State<UserBottomNavBar> {
  int myCurrentIndex = 0;
  List pages = [
    HomeUser(),
    UserTherapistsPage(),
    MySpacePage(),
    ProfileUserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: myCurrentIndex,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/home.png"),
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/doctor.png"),
                  size: 30,
                ),
                label: "Therapists"),
            BottomNavigationBarItem(
                icon: Icon(Icons.space_dashboard_outlined), label: "My space"),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage("assets/images/Photo.png"),
                  width: 30,
                ),
                label: "Profile"),
          ]),
      body: pages[myCurrentIndex],
    );
  }
}
