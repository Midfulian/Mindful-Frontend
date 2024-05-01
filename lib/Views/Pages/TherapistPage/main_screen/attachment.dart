import 'package:flutter/material.dart';

class AttachmentPage extends StatelessWidget {
  Widget buildContainer() {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(Icons.picture_as_pdf, color: Colors.red),
        title: Text('File Title.pdf'),
        subtitle: Text('313kb. 31 Aug, 2022',
            style: TextStyle(fontSize: 16, color: Colors.grey)),
        trailing: Icon(Icons.download, color: Colors.blue),
        onTap: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {},
            ),
            Text('Attachment'),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Text('last week'),
            buildContainer(),
            buildContainer(),
            buildContainer(),
            Text('12/2/2018'),
            buildContainer(),
            buildContainer(),
            Text('12/2/2018'),
            buildContainer(),
            buildContainer(),
            buildContainer(),
            buildContainer(),
          ])),
        ],
      ),
    );
  }
}
