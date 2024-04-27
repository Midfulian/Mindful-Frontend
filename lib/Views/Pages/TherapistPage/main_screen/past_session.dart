import 'package:flutter/material.dart';
// import 'package:gr_project/Views/Components/Therapist_commponents/session_Info_component.dart';
import 'package:gr_project/Views/Pages/book_screen/appoinyment_screen.dart';

class PastSession  extends StatefulWidget {
  const PastSession({Key? key}) : super(key: key);

  @override
  PastSessionState createState() => PastSessionState();
}

class PastSessionState extends State<PastSession> {
  double _progressValue = 0.0;
  void _updateProgressValue() {
    setState(() {
      _progressValue += 0.1;
      if (_progressValue >= 1.0) {
        _progressValue = 0.0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;


Widget buildContainer(BuildContext context, IconData trailingIcon){
  return Padding(
    padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
    child:  Container(
      // padding: EdgeInsets.all(16.0),
                    width: screenWidth * 0.95,
                    //height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                        color:Color.fromARGB(134, 207, 205, 205),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white70,
                            offset: Offset(0, 0.05),
                          )
                        ]
                        ), 
    child: ListTile(
        leading: Image.asset(
    "assets/images/Photo.png",
   width: screenWidth * 0.1,
  ),
        title: Text(
          'Mona Ali',
          style: TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontFamily: "Robot",
            fontWeight: FontWeight.w600,
            fontSize: screenWidth * 0.05
             ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '@eslina2022',
              style: TextStyle(
                 color: Color.fromRGBO(51, 51, 51, 1),
                 fontFamily: "Robot",
                 fontWeight: FontWeight.w500,
                 fontSize: screenWidth * 0.04
              ),
            ),
            Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      size: screenWidth * 0.04,
                                      color: Colors.black45,
                                    ),
                                    
                                    Text("02 January",
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          fontFamily: "Robot",
                                          fontWeight: FontWeight.w600,
                                          fontSize: screenWidth * 0.03
                                      ),),
                                    
                                      Padding(
                                       padding: EdgeInsets.fromLTRB(
                                      screenWidth * 0.03, 0, 0, 0),
                                       child: Icon(
                                      Icons.access_time,
                                      size: screenWidth * 0.04,
                                      color: Colors.black45,
                                    ),
                                      ),
                                    Text("7:30 PM-8:30 PM",
                                      style: TextStyle(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          fontFamily: "Robot",
                                          fontWeight: FontWeight.w600,
                                          fontSize: screenWidth * 0.03
                                      ),
                                    )
                                  ],
                                ),
                               
             
          ],
        ),
        trailing: Padding(
                 padding: EdgeInsets.fromLTRB(0, 0, 0, screenWidth * 0.2),
                  child: IconButton(
          icon: Icon(trailingIcon),
          color: Colors.blue,
          onPressed: () {
            
          },
        ),
    ),
      ),
  ),
      );
}



 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            
            Padding(
              padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.2, screenWidth * 0.02, 0, 0),
                  child: TextButton(
                    onPressed: () {
                      
                    },
              child: Text("Upcoming",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
            ),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(
                  screenWidth * 0.05, screenWidth * 0.02, 0, 0),
              child: TextButton(
                    onPressed: () {
                      
                    },
              child: Text("Past",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
             ),
            ),
          ],
        ),
        
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
           
          BoxConstraints(maxHeight: MediaQuery
              .of(context)
              .size
              .height),
              child: LayoutBuilder(
                builder: (context, constraints) {
              final double screenWidth = constraints.maxWidth;
              final double screenHeight = constraints.maxHeight;
               SizedBox(height:300);
              return Column(
                children: [
                 buildContainer(context, Icons.file_copy),
                 SizedBox(height: 20,),
                 buildContainer(context, Icons.file_copy),
                 SizedBox(height: 20,),
                 buildContainer(context, Icons.file_copy),
                ],
              );
            },
              ),
        ),
      ),
    );
  }
}