import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/TherapistPage/main_screen/booking_page.dart';
import 'package:gr_project/Views/Pages/TherapistPage/main_screen/calender_page.dart';
import 'package:gr_project/Views/Pages/TherapistPage/main_screen/home_page.dart';
import 'package:gr_project/Views/Pages/TherapistPage/main_screen/profile_Page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _myBottomNavBarState();
}

class _myBottomNavBarState extends State<BottomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [HomePage(), CalenderPage(), BookingPage(), ProfilePage()];
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
                  AssetImage("assets/images/calendar.png"),
                ),
                label: "Calendar"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/historys.png"),
                ),
                label: "Booking"),
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
