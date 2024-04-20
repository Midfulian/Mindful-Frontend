import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/TherapistPage/main_screen/calender_page.dart';



class Appointmentspages extends StatelessWidget {
  
  void handleVideoCall() {
    
    print('Join Now button tapped!'); 
  }

  Widget buildContainer(BuildContext context, IconData trailingIcon) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Image.asset(
    "assets/images/photo.png",
   height: 40,
   width: 40,
  ),
        title: Text('Mona Ali'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '@eslina2022',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text('02 january 12:30'),
          ],
        ),
        trailing: IconButton(
          icon: Icon(trailingIcon),
          color: Colors.blue,
          onPressed: () {
            if (trailingIcon == Icons.video_call) {
              showDialog(
                context: context,
                builder: (BuildContext dialogContext) => AlertDialog(
                  title: Text('Join Now'),
                  content: Text('You are about to join the video call.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(dialogContext);
                        handleVideoCall();
                      },
                      child: Text('Join'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(dialogContext);
                      },
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
    
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text('Appointments'),
            SizedBox(width: 120),
            IconButton(
              icon: Icon(Icons.calendar_today, color: Colors.black),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
      
      body: CustomScrollView(
         slivers: <Widget>[
          //CalenderPage().connect();
          SliverList(
            delegate: SliverChildListDelegate([
              
              buildContainer(context, Icons.chat),
              buildContainer(context, Icons.video_call), 
              buildContainer(
                  context, Icons.mic), 
              
            ]),
          ),
        ],
      ),
    );
  }
}
