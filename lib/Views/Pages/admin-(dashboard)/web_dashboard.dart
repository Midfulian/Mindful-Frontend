import 'package:flutter/material.dart';
import 'package:mindful/Model/therapist_registration_request.dart';

class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  List<TherapistRegistrationRequest> requests = []; // Your list of requests

  @override
  void initState() {
    super.initState();

    requests.add(TherapistRegistrationRequest(
      id: 1,
      name: "John Doe",
      phone: "1234567890",
      nationalIdCard: "https://upload.wikimedia.org/wikipedia/commons/3/34/Philippine_Identification_System_%28PhilSys%29_card_sample.png",
      practiceLicenseId: "https://upload.wikimedia.org/wikipedia/commons/7/79/Californian_sample_driver%27s_license%2C_c._2019.jpg",
      professionalId: "https://st2.depositphotos.com/1220016/8113/i/450/depositphotos_81138940-stock-photo-professional-woman-smiling-with-arms.jpg",
    ));

    requests.add(TherapistRegistrationRequest(
      id: 2,
      name: "Jane Doe",
      phone: "0987654321",
      nationalIdCard: "https://miro.medium.com/v2/resize:fit:1024/1*Qg9KBPDUI_c0XGKLPTX9bw.jpeg",
      practiceLicenseId: "https://miro.medium.com/v2/resize:fit:1024/1*Qg9KBPDUI_c0XGKLPTX9bw.jpeg",
      professionalId: "",
    ));

    requests.add(TherapistRegistrationRequest(
      id: 3,
      name: "Alice Doe",
      phone: "6789012345",
      nationalIdCard: "https://www.shutterstock.com/image-photo/sample-modern-drivers-license-front-600nw-1977258998.jpg",
      practiceLicenseId: "https://www.shutterstock.com/image-photo/sample-modern-drivers-license-front-600nw-1977258998.jpg",
      professionalId: "",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashboard"),
      ),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("user name: ${request.name}"),
                  Text("phone: ${request.phone}"),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      request.nationalIdCard.isNotEmpty
                          ? GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Image.network(request.nationalIdCard),
                              );
                            },
                          );
                        },
                        child: Image.network(request.nationalIdCard, width: 200),
                      )
                          : Text('National ID Card Not Found'),
                      request.practiceLicenseId.isNotEmpty
                          ? GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Image.network(request.practiceLicenseId),
                              );
                            },
                          );
                        },
                        child: Image.network(request.practiceLicenseId, width: 200),
                      )
                          : Text('Practice License ID Not Found'),
                      request.professionalId.isNotEmpty
                          ? GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Image.network(request.professionalId),
                              );
                            },
                          );
                        },
                        child: Image.network(request.professionalId, width: 200),
                      )
                          : Text('Professional ID Not Found'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle accept logic
                          // ...
                        },
                        child: Text("Accept"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle reject logic
                          // ...
                        },
                        child: Text("Reject"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}