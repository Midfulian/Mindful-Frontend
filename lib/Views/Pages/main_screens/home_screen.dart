import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/book_screen/doctor_profile_screen.dart';
import 'package:gr_project/Views/Pages/doctor_service_page.dart';
import 'package:gr_project/Views/Pages/notifications_screen.dart';
import 'package:gr_project/models/horizontal_list.dart';

import '../test_screen.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  Future<List<HorizontalList>> getList = getHorizontalList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final double screenWidth = constraints.maxWidth;
              final double screenHeight = constraints.maxHeight;
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
                    child: Row(
                      children: [
                        Image(
                          image: const AssetImage("assets/images/Photo.png"),
                          width: screenWidth * 0.08,
                          height: screenHeight * 0.08,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.3, 0, 0, 0),
                          child: Text(
                            "Home",
                            style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.3, 0, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotificationsScreen(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.notifications_none,
                              size: screenWidth * 0.08,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.04,
                        screenWidth * 0.01, screenWidth * 0.04, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: screenWidth * 0.06),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.05, 0, 0, 0),
                                  child: Text(
                                    'Welcome loly,',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.045,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.05,
                                      screenWidth * 0.005,
                                      0,
                                      0),
                                  child: Text(
                                    'Each day is a new opportnuity for',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.032,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.05, 0, 0, 0),
                                  child: Text(
                                    'healing and growth',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.032,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0,
                          screenWidth * 0.03, screenWidth * 0.02),
                      child: Container(
                        height: screenHeight * 0.23,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.04,
                                      screenWidth * 0.03,
                                      0,
                                      0),
                                  child: Text(
                                    "How are you feeling today ?",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print('Happy image clicked');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood overjoyed.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Happy",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Image or text clicked');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood neutral.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Manic",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Angry image or text clicked');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood sad.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Angry",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Sad image or text clicked');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.001),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood depressed.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Sad",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('Calm image or text clicked');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.045,
                                        vertical: screenHeight * 0.03),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/images/Solid mood happy.png",
                                          ),
                                          width: screenWidth * 0.09,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: screenHeight * 0.01),
                                          child: Text(
                                            "Calm",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.035,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 140, 140, 140),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => TestScreen()));
                              },
                              child: Center(
                                child: Text(
                                  "Start Your test now",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.043,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.04, screenWidth * 0.04, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Recommended for you",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(screenWidth * 0.35, 0, 0, 0),
                          child: Text(
                            "See all",
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: FutureBuilder(
                        future: getList,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text(
                                "Error: ${snapshot.error}",
                              ),
                            );
                          } else {
                            List<HorizontalList>? data = snapshot.data;

                            return ListView.builder(
                              itemCount: data!.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.03,
                                      screenWidth * 0.01,
                                      screenWidth * 0.03,
                                      0),
                                  child: Container(
                                    height: screenHeight * 0.01,
                                    width: screenWidth - 10,
                                    decoration: BoxDecoration(
                                      color: Colors.white38,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ListTile(
                                          leading: CircleAvatar(
                                            backgroundImage: AssetImage(
                                              data[index].docImage,
                                            ),
                                          ),
                                          title: Text(
                                            data[index].docName,
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: screenWidth * 0.04,
                                            ),
                                          ),
                                          subtitle: Text(
                                            data[index].docSpecialist,
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: screenWidth * 0.04,
                                            ),
                                          ),
                                          trailing: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.star,
                                              size: screenWidth * 0.05,
                                              color: Colors.amber,
                                            ),
                                            label: Text(
                                              "Top therapists",
                                              style: TextStyle(
                                                fontSize: screenWidth * 0.04,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.18),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: screenWidth * 0.04,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: screenWidth * 0.04,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: screenWidth * 0.04,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: screenWidth * 0.04,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                                size: screenWidth * 0.04,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.18,
                                              top: screenWidth * 0.01),
                                          child: Text(
                                            data[index].rate,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.04,
                                              top: screenWidth * 0.01),
                                          child: const Text(
                                            "Inerests:",
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.02,
                                              top: screenWidth * 0.01),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: screenHeight * 0.05,
                                                width: screenWidth * 0.3,
                                                decoration: BoxDecoration(
                                                  color:
                                                      Colors.lightBlue.shade50,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    "Description",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Container(
                                                height: screenHeight * 0.05,
                                                width: screenWidth * 0.6,
                                                decoration: BoxDecoration(
                                                  color:
                                                      Colors.lightBlue.shade50,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    "Specific Phobia and Social Phobia",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.04,
                                              top: screenWidth * 0.01),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.money,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                "${data[index].price.toString()} EGP",
                                                style: const TextStyle(
                                                  color: Colors.green,
                                                ),
                                              ),
                                              Text(
                                                "/ ${data[index].perMinute} min",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: screenWidth * 0.07,
                                              top: screenWidth * 0.05),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DoctorServicePage(),
                                                    ),
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 237, 236, 236),
                                                ),
                                                child: const Text(
                                                  "View profile",
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screenWidth * 0.01),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    screenWidth * 0.2, 0, 0, 0),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            DoctorProfilePage(),
                                                      ),
                                                    );
                                                  },
                                                  child: const Text(
                                                    "BooK now",
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        }),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
