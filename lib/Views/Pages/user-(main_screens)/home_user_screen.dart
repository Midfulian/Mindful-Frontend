import 'package:flutter/material.dart';
import 'package:gr_project/Model/horizontal_list.dart';
import 'package:gr_project/Views/Pages/doctor_service_page.dart';
import 'package:gr_project/Views/Pages/user&therapist-(start,login,reset_password,onBoarding,notifications)/notifications_screen.dart';
import 'package:gr_project/Views/Pages/user-(doctor_profile,doctor_appointment,payment,test,result)/doctor_profile_user_screen.dart';
import 'package:gr_project/Views/Pages/user-(doctor_profile,doctor_appointment,payment,test,result)/test_user_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({Key? key}) : super(key: key);

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  List<_SalesData> dataChart = [
    _SalesData('Sat', 5), // Happy
    _SalesData('Sun', 4), // Good
    _SalesData('Mon', 3), // Meh
    _SalesData('Wed', 2), // Bad
    _SalesData('Thu', 1) // Awful
  ];
  List<HorizontalList> data = getHorizontalList();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.02),
          child: Image.asset(
            "assets/images/Photo.png",
            width: screenWidth * 0.1,
          ),
        ),
        title: Center(
          child: Text("Home",
              style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationsScreen(),
                ),
              );
            },
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Welcome, User Name',
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Each Day is a new opportunity for helping and growth',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0,
                  screenWidth * 0.03, screenWidth * 0.02),
              child: Container(
                width: screenWidth,
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
                          padding: EdgeInsets.fromLTRB(screenWidth * 0.04,
                              screenWidth * 0.03, 0, 0),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TestScreen()));
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
            SfCartesianChart(
                primaryXAxis: const CategoryAxis(),
                // Chart title
                title: const ChartTitle(text: 'Moody Chart'),
                // Enable legend
                legend: const Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <CartesianSeries<_SalesData, String>>[
                  LineSeries<_SalesData, String>(
                      dataSource: dataChart,
                      xValueMapper: (_SalesData sales, _) => sales.day,
                      yValueMapper: (_SalesData sales, _) => sales.mood,
                      name: 'Mood',
                      // Enable data label
                      dataLabelSettings:
                      const DataLabelSettings(isVisible: true))
                ]),
            SizedBox(
              height: screenHeight * 0.8,
              child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(screenWidth * 0.03,
                        screenWidth * 0.01, screenWidth * 0.03, 0),
                    child: Container(
                      width: screenWidth ,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            padding: EdgeInsets.only(left: screenWidth * 0.18),
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
                                    color: Colors.lightBlue.shade50,
                                    borderRadius: BorderRadius.circular(30),
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
                                    color: Colors.lightBlue.shade50,
                                    borderRadius: BorderRadius.circular(30),
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
                                        builder: (context) => DoctorServicePage(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                    const Color.fromARGB(255, 237, 236, 236),
                                  ),
                                  child: const Text(
                                    "View profile",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.01),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.2, 0, 0, 0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DoctorProfileUserPage(),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.day, this.mood);
  final String day;
  final int mood;
}
