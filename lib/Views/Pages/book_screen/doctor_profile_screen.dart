import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gr_project/Views/Components/profil_appbar.dart';
import 'package:gr_project/Views/Components/date_picker.dart' as date;

import 'appoinyment_screen.dart';

class DoctorProfilePage extends StatefulWidget {
  const DoctorProfilePage({super.key});

  @override
  State<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  bool isSelected = true;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  String choice = '';
  bool pickedDate = false;
  bool pickedTime = false;
  DateTime userDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildProfileAppBar(context, "Profile"),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double screenWidth = constraints.maxWidth;
              final double screenHeight = constraints.maxHeight;
              return Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(screenWidth * 0.04, 0, 0, 0),
                        child: const Image(
                          image: AssetImage("assets/images/Photo.png"),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.09, screenWidth * 0.04, 0, 0),
                            child: Text(
                              "Dr. Marcus Horizon",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(screenWidth * 0.09,
                                    screenWidth * 0.01, 0, 0),
                                child: Text(
                                  "Chardiologist",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: screenWidth * 0.03),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(screenWidth * 0.09,
                                    screenWidth * 0.02, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: screenWidth * 0.04,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          screenWidth * 0.01, 0, 0, 0),
                                      child: const Text(
                                        "4.7",
                                        style: TextStyle(color: Colors.amber),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.75, 0),
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.05, 0, screenWidth * 0.02, 0),
                        child: const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamlor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim venia...Read more",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.65, 0),
                    child: Text(
                      "Specialities",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.03, screenWidth * 0.01, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.28,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 211, 236, 246),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                              child: Text(
                            "Dental Surgeon",
                            style: TextStyle(color: Colors.blue),
                          )),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.05, 0, 0, 0),
                          child: Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.35,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 211, 236, 246),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                "Aesthetic Surgeon",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.65, 0),
                    child: Text(
                      "Session type",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.035, screenWidth * 0.01, 0, 0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isSelected = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isSelected
                                ? Colors.blue
                                : const Color.fromARGB(255, 251, 251, 251),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fixedSize:
                                Size(screenWidth * 0.3, screenHeight * 0.06),
                          ),
                          child: Text(
                            "Video call",
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.black),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isSelected = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isSelected
                                  ? const Color.fromARGB(255, 251, 251, 251)
                                  : Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              fixedSize: Size(
                                screenWidth * 0.3,
                                screenHeight * 0.06,
                              ),
                            ),
                            child: Text(
                              "Chat",
                              style: TextStyle(
                                  color:
                                      isSelected ? Colors.black : Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Date",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.02, right: screenWidth * 0.02),
                    child: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: screenWidth * 0.02,
                        ),
                        child: date.DatePicker(
                          DateTime.now(),
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.15,
                          selectionColor: Colors.blue,
                          selectedTextColor: Colors.white,
                          dateTextStyle: TextStyle(
                            fontSize: screenWidth * .04,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          dayTextStyle: TextStyle(
                            letterSpacing: 2,
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          monthTextStyle: TextStyle(
                            letterSpacing: 2,
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          onDateChange: (date) {
                            setState(() {
                              userDate = date;
                              pickedDate = true;
                            });
                          },
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Time",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: isSelected3 || isSelected4
                                ? () {}
                                : () {
                                    setState(() {
                                      isSelected2 = !isSelected2;
                                      pickedTime = true;
                                      choice = "09:00 AM";
                                    });
                                  },
                            child: Container(
                              width: screenWidth * 0.25,
                              height: screenHeight * 0.06,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected2
                                      ? Colors.grey
                                      : Colors.grey.shade300,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "09:00 AM",
                                style: TextStyle(
                                  color: isSelected2
                                      ? Colors.black87
                                      : Colors.grey.shade500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: isSelected2 || isSelected4
                                ? () {}
                                : () {
                                    setState(() {
                                      isSelected3 = !isSelected3;
                                      pickedTime = true;
                                      choice = "10:00 AM";
                                    });
                                  },
                            child: Container(
                              width: screenWidth * 0.25,
                              height: screenHeight * 0.06,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected3
                                      ? Colors.grey
                                      : Colors.grey.shade300,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "10:00 AM",
                                style: TextStyle(
                                  color: isSelected3
                                      ? Colors.black87
                                      : Colors.grey.shade500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: isSelected2 || isSelected3
                                ? () {}
                                : () {
                                    setState(() {
                                      isSelected4 = !isSelected4;
                                      pickedTime = true;
                                      choice = "11:00 AM";
                                    });
                                  },
                            child: Container(
                              width: screenWidth * 0.25,
                              height: screenHeight * 0.06,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected4
                                      ? Colors.grey
                                      : Colors.grey.shade300,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "11:00 AM",
                                style: TextStyle(
                                  color: isSelected4
                                      ? Colors.black87
                                      : Colors.grey.shade500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        fixedSize:
                            Size(screenWidth * 0.9, screenHeight * 0.07)),
                    onPressed: () {
                      if (pickedDate && pickedTime) {
                        Get.to(
                          AppointmentPage(
                            choice: choice,
                            dateTime: userDate,
                          ),
                          transition: Transition.rightToLeftWithFade,
                        );
                      }
                    },
                    child: Text(
                      "Book Apointment",
                      style: TextStyle(
                          color: Colors.white, fontSize: screenWidth * 0.04),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
