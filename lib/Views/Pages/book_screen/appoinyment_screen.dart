import 'package:flutter/material.dart';
import 'package:gr_project/Views/Components/profil_appbar.dart';
import 'package:intl/intl.dart';

import 'payment_screen.dart';

class AppointmentPage extends StatefulWidget {
  final DateTime dateTime;
  final String choice;
  const AppointmentPage({
    super.key,
    required this.dateTime,
    required this.choice,
  });

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildProfileAppBar(context, "Appointment"),
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
                    height: screenHeight * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, screenWidth * 0.65, 0),
                    child: Text(
                      "Specialities",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.03, screenWidth * 0.03, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: screenHeight * 0.06,
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
                            height: screenHeight * 0.06,
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, screenWidth * 0.04, screenWidth * 0.78, 0),
                    child: Text(
                      "Date",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.1,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 223, 237, 249),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.calendar_month,
                            color: Colors.blue,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.05, 0, 0, 0),
                          child: Text(
                            "${DateFormat.yMMMd().add_jm().format(widget.dateTime).toString()}  | ${widget.choice}",
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      screenWidth * 0.04,
                      screenWidth * 0.57,
                      0,
                    ),
                    child: Text(
                      "Payment Detail",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.04, screenWidth * 0.02, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Consultation",
                          style: TextStyle(
                              color: Colors.grey, fontSize: screenWidth * 0.04),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.57, 0, 0, 0),
                          child: Text(
                            "\$60.00",
                            style: TextStyle(fontSize: screenWidth * 0.04),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.04, screenWidth * 0.02, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Admin Fee",
                          style: TextStyle(
                              color: Colors.grey, fontSize: screenWidth * 0.04),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.602, 0, 0, 0),
                          child: Text(
                            "\$01.00",
                            style: TextStyle(fontSize: screenWidth * 0.04),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.04, screenWidth * 0.02, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Aditional Discount",
                          style: TextStyle(
                              color: Colors.grey, fontSize: screenWidth * 0.04),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.57, 0, 0, 0),
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: screenWidth * 0.04),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.04, screenWidth * 0.03, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.72, 0, 0, 0),
                          child: Text(
                            "\$61.00",
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.03, 0, screenWidth * 0.03, 0),
                    child: Divider(
                      height: screenHeight * 0.05,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0, screenWidth * 0.02, screenWidth * 0.5, 0),
                    child: Text(
                      "Payment Method ",
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.03,
                        screenWidth * 0.03, screenWidth * 0.03, 0),
                    child: Container(
                      height: screenHeight * 0.08,
                      width: screenWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: screenWidth * 0.0002)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.03, 0, 0, 0),
                            child: const Text("VISA"),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(screenWidth * 0.7, 0, 0, 0),
                            child: Radio(
                                value: 1,
                                groupValue: 1,
                                onChanged: (int? value) {}),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: screenWidth * 0.04),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                screenWidth * 0.065, 0, 0, 0),
                            child: Text(
                              "\$ 61.00",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(screenWidth * 0.05, 0, 0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              fixedSize:
                                  Size(screenWidth * 0.7, screenHeight * 0.07)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PaymentPage()));
                          },
                          child: Text(
                            "Book Apointment",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.04),
                          ),
                        ),
                      )
                    ],
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
