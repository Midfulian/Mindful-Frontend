import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/TherapistPage/edit_profile_page.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              final double screenWidth = constraints.maxWidth;
              final double screenHeight = constraints.maxHeight;
              return Padding(
                padding: EdgeInsets.fromLTRB(0, screenWidth * 0.18, 0, 0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        'assets/images/Photo.png',
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      " DR/ Sellina David",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "@sellina2002",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.3, 0, 0, 0),
                              child: Row(
                                children: [
                                  Text("4.5",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.04)),
                                  Icon(
                                    Icons.star,
                                    size: screenWidth * 0.05,
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.28, screenWidth * 0.03, 0, 0),
                              child: Text(
                                "Rates",
                                style: TextStyle(fontSize: screenWidth * 0.04),
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 10,
                          width: 30,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.05, 0, 0, 0),
                              child: Row(
                                children: [
                                  Text("123",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.04)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.08, screenWidth * 0.03, 0, 0),
                              child: Text(
                                "Reviews",
                                style: TextStyle(fontSize: screenWidth * 0.04),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: screenHeight * 0.08,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfileScreen(),
                            ),
                          );
                        },
                        leading: ImageIcon(
                          AssetImage(
                            'assets/images/pin.png',
                          ),
                          color: Colors.black,
                        ),
                        title: Text(
                          "Account settings",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenWidth * 0.05,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: screenHeight * 0.08,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: ImageIcon(
                          AssetImage(
                            'assets/images/comment.png',
                          ),
                          color: Colors.black,
                        ),
                        title: Text(
                          "Total reviews",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenWidth * 0.05,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: screenHeight * 0.08,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: ImageIcon(
                          AssetImage(
                            'assets/images/terms-and-conditions.png',
                          ),
                          color: Colors.black,
                        ),
                        title: Text(
                          "terms & Conditions",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: screenWidth * 0.05,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: screenHeight * 0.08,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage(
                                'assets/images/globe.png',
                              ),
                              color: Colors.black,
                            ),
                            SizedBox(width: 15),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  screenWidth * 0.045, 0, 0, 0),
                              child: Text(
                                "Preferred Language",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenWidth * 0.04),
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelected = !isSelected;
                                    });
                                  },
                                  child: Container(
                                    height: screenHeight * 0.045,
                                    width: screenWidth * 0.18,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      color: isSelected
                                          ? Colors.blue
                                          : Color.fromARGB(255, 251, 251, 251),
                                    ),
                                    child: Text(
                                      "English",
                                      style: TextStyle(
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.grey,
                                        fontSize: screenWidth * 0.04,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelected = !isSelected;
                                    });
                                  },
                                  child: Container(
                                    height: screenHeight * 0.045,
                                    width: screenWidth * 0.18,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: isSelected
                                          ? Color.fromARGB(255, 251, 251, 251)
                                          : Colors.blue,
                                    ),
                                    child: Text(
                                      "العربية",
                                      style: TextStyle(
                                        color: isSelected
                                            ? Colors.grey
                                            : Colors.white,
                                        fontSize: screenWidth * 0.04,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: screenHeight * 0.08,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ListTile(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            backgroundColor: Colors.white,
                            elevation: 2,
                            useSafeArea: true,
                            builder: (_) {
                              return SizedBox(
                                height: 200,
                                //could change this to Color(0xFF737373),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.03,
                                      right: screenHeight * 0.03),
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        const Text(
                                          "Log out",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          child: Text(
                                            "Are you sure you want to log out ?",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 50),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                minimumSize:
                                                    const Size(120, 45),
                                                backgroundColor:
                                                    HexColor('#7E03032'),
                                              ),
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                  color: HexColor('#E50000'),
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                minimumSize:
                                                    const Size(120, 45),
                                                backgroundColor:
                                                    HexColor('#E50000'),
                                              ),
                                              child: Text(
                                                "Log out",
                                                style: TextStyle(
                                                  color: HexColor('#FFFFFF'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        leading: const ImageIcon(
                          AssetImage(
                            'assets/images/icons.png',
                          ),
                          color: Colors.black,
                        ),
                        title: const Text("Log out"),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: 60,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: ListTile(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            backgroundColor: Colors.white,
                            elevation: 2,
                            useSafeArea: true,
                            builder: (_) {
                              return SizedBox(
                                height: 250,
                                //could change this to Color(0xFF737373),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30),
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        const Text(
                                          "Delete account",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.02),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          child: Text(
                                            "Are you sure you want to delete account ?",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        //Are you sure you want to delete account ?
                                        // Once you click delete , your account will be deleted permanently
                                        Align(
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          child: Text(
                                            "Once you click delete , your account will be deleted permanently",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: screenWidth * 0.029),
                                          ),
                                        ),
                                        SizedBox(height: screenHeight * 0.07),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                minimumSize:
                                                    const Size(120, 45),
                                                backgroundColor:
                                                    HexColor('#7E03032'),
                                              ),
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                  color: HexColor('#E50000'),
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                minimumSize:
                                                    const Size(120, 45),
                                                backgroundColor:
                                                    HexColor('#E50000'),
                                              ),
                                              child: Text(
                                                "Delete",
                                                style: TextStyle(
                                                  color: HexColor('#FFFFFF'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        leading: const ImageIcon(
                          AssetImage(
                            'assets/images/helps.png',
                          ),
                          color: Colors.red,
                        ),
                        title: const Text(
                          "Delete account",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ));
  }
}
