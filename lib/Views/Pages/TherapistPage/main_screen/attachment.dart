import 'package:flutter/material.dart';

class AttachmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Widget buildContainer(BuildContext context, String fileImg,
        String fileTitle, String filestor, String fileDate) {
      return Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 246, 246),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Image(
            image: AssetImage(fileImg),
            width: screenWidth * 0.08,
          ),
          title: Text('$fileTitle'),
          subtitle: Text('$filestor. $fileDate',
              style:
                  TextStyle(fontSize: screenWidth * 0.04, color: Colors.grey)),
          trailing: ImageIcon(
            AssetImage("assets/images/download.png"),
            color: Colors.blue,
            size: screenWidth * 0.05,
          ),
          onTap: () {},
        ),
      );
    }

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
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
              child: Text(
                'Last week',
                style: TextStyle(
                    fontFamily: "Robot",
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.04,
                    color: Colors.grey),
              ),
            ),
            buildContainer(context, "assets/images/file.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            buildContainer(context, "assets/images/pdf.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            buildContainer(context, "assets/images/image.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
              child: Text(
                '12/2/2018',
                style: TextStyle(
                    fontFamily: "Robot",
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.04,
                    color: Colors.grey),
              ),
            ),
            buildContainer(context, "assets/images/file.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            buildContainer(context, "assets/images/pdf.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            buildContainer(context, "assets/images/image.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            Padding(
              padding: EdgeInsets.fromLTRB(screenWidth * 0.03, 0, 0, 0),
              child: Text(
                '12/2/2018',
                style: TextStyle(
                    fontFamily: "Robot",
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.04,
                    color: Colors.grey),
              ),
            ),
            buildContainer(context, "assets/images/pdf.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            buildContainer(context, "assets/images/pdf.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            buildContainer(context, "assets/images/pdf.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
            buildContainer(context, "assets/images/pdf.png", "File Title.pdf",
                "313 KB ", ". 31 Aug, 2022 "),
          ])),
        ],
      ),
    );
  }
}
