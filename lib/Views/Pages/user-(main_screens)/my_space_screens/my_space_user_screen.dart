import 'package:flutter/material.dart';
import 'package:mindful/Model/note_provider.dart';
import 'package:mindful/Views/Pages/user-(doctor_profile,doctor_appointment,payment,test,result)/test_user_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'journaling_text.dart';
import 'journaling_voice.dart';

class MySpacePage extends StatefulWidget {
  const MySpacePage({super.key});

  @override
  State<MySpacePage> createState() => _MySpacePageState();
}

class _MySpacePageState extends State<MySpacePage> {
  final player = FlutterSoundPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  Future<void> initPlayer() async {
    await player.openPlayer();
  }

  Future<void> playAudio(String filePath) async {
    try {
      if (player.isPlaying) {
        await player.stopPlayer();
      }

      await player.startPlayer(
        fromURI: filePath,
      );
    } catch (e) {
      print('Error playing audio: $e');
    }
  }

  @override
  void dispose() {
    player.closePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final noteProvider = Provider.of<NoteProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    List<Test> tests = [
        Test('Depression, Anxiety and stress scale', 'This test is designed to measure your psychological state with regards to the degree of depression, stress and anxiety. Please read the test sentences and choose the best answe'),
        Test('Anxiety scale', 'This test is designed to measure your anxiety degree. Please read the test sentences and choose the best answer that fits you during the last 2 weeks. '),
        Test('Depression scale', 'This test is designed to measure your depression degree. Please read the test sentences and choose the best answer that fits you during the last 2 weeks. '),
        Test('OCD scale', 'Obsessions are unwelcome or distressing ideas, thoughts, images or impulses that repeatedly enter your mind. They may seem to occur against your will. They may be repugnant'),
        Test('PTSD', 'This test assesses the psychological impact of stressful events after its ends by few months. Below is a list of problems and complaints that person sometimes have in response to'),
        Test('Adult ADHD Self-Report Scale', 'Attention deficit hyperactivity disorder (ADHD) in adults is a mental health related disorder and includes a set of persistent problems, such as difficulty in attention'),
      ];
    List<_SalesData> dataChart = [
      _SalesData('Sat', 6), // Happy
      _SalesData('Sun', 0), // Good
      _SalesData('Mon', 8), // Meh
      _SalesData('Wed', 1), // Bad
      _SalesData('Thu', 3) // Awful
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Space'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
            ExpansionTile(
              title: const Text('your Journaling'),
              children: <Widget>[
                ...noteProvider.notes.entries.map((entry) {
                  return ListTile(
                    title: Text(entry.key),
                    subtitle: Text(entry.value),
                  );
                }).toList(),
                if (noteProvider.voiceNotes.isEmpty) ...{
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: screenHeight * 0.01,
                    ),
                    child: Text(
                      "No voice notes yet",
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                } else ...{
                  for (var voiceNote in noteProvider.voiceNotes) ...{
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05,
                        vertical: screenHeight * 0.01,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Voice ${noteProvider.voiceNotes.indexOf(voiceNote) + 1}',
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.play_arrow),
                                onPressed: () async {
                                  await playAudio(voiceNote);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  },
                },
              ],
            ),
            ExpansionTile(
              title: Text('your Reports'),
              children: <Widget>[
                SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    // Chart title
                    title: const ChartTitle(text: 'ML Results'),
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
              ],
            ),
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
                        'Psychological Test',
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'How much do i know about myself, do i suffer from any psychological disorder ?, should i visit a psychologist ?, in just a few minutes you will get the answer to all these questions.',
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
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: tests.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TestScreen()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(screenWidth * 0.05),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  tests[index].title,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.06,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Text(
                                  tests[index].description,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '1:30 min',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.black,
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Wrap(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.note),
                    title: const Text('Text Note'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JournalingTextPage()));
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.mic),
                    title: const Text('Voice Note'),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JournalingVoicePage()));
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class Test {
  final String title;
  final String description;

  Test(this.title, this.description);
}

class _SalesData {
  _SalesData(this.day, this.mood);
  final String day;
  final int mood;
}

