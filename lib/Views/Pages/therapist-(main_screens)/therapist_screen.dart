import 'package:flutter/material.dart';
import 'package:mindful/Views/Pages/therapist-(main_screens)/calender_therapist_screen.dart';
import 'package:mindful/Views/Pages/therapist-(main_screens)/booking_therapist_screen/booking_therapist_screen.dart';
import 'package:mindful/Views/Pages/therapist-(main_screens)/home_therapist_screen.dart';
import 'package:mindful/Views/Pages/therapist-(main_screens)/ptofile/profile_therapist_screen.dart';

class TherapistBottomNavBar extends StatefulWidget {
  const TherapistBottomNavBar({super.key});

  @override
  State<TherapistBottomNavBar> createState() => _myBottomNavBarState();
}

class _myBottomNavBarState extends State<TherapistBottomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [HomeTherapist(), CalenderPage(), BookingPage(), ProfileTherapistPage()];
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
