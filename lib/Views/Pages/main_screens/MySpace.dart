import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:provider/provider.dart';

import '../../../note_provider.dart';
import '../journaling_text.dart';
import '../journaling_voice.dart';
import '../test_screen.dart';

class MySpacePage extends StatefulWidget {
  const MySpacePage({super.key});

  @override
  _MySpaceState createState() => _MySpaceState();
}

class _MySpaceState extends State<MySpacePage> {
  bool isExpandedYourJournaling = false;
  bool isExpandedYourReports = false;
  final player = FlutterSoundPlayer();

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

  void toggleExpand() {
    setState(() {
      isExpandedYourJournaling = !isExpandedYourJournaling;
    });
  }

  void toggleExpandR() {
    setState(() {
      isExpandedYourReports = !isExpandedYourReports;
    });
  }

  @override
  Widget build(BuildContext context) {
    final noteProvider = Provider.of<NoteProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Space",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
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
                    Padding(
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
                    SizedBox(height: screenHeight * 0.03),
                    GestureDetector(
                      onTap: toggleExpand,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05,
                            ),
                            child: Text(
                              "Your Journaling",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Icon(
                            isExpandedYourJournaling
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                    if (isExpandedYourJournaling) ...[
                      if (noteProvider.notes.isEmpty) ...{
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05,
                            vertical: screenHeight * 0.01,
                          ),
                          child: Text(
                            "No notes yet",
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      } else ...{
                        for (var note in noteProvider.notes.entries) ...{
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05,
                              vertical: screenHeight * 0.01,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  note.key,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    // Increase the font size for the title
                                    fontWeight: FontWeight.bold, // Make the title bold
                                  ),
                                ),
                                Text(
                                  note.value,
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        },
                      },
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
                                    // Increase the font size for the title
                                    fontWeight: FontWeight.bold, // Make the title bold
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
                    SizedBox(height: screenHeight * 0.03),
                    GestureDetector(
                      onTap: toggleExpandR,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05,
                            ),
                            child: Text (
                              "Your Reports",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Icon(
                            isExpandedYourReports
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                          ),
                        ],
                      ),
                    ),
                    if (isExpandedYourReports) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.01,
                        ),
                        child: Text(
                          "Text Journaling",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.01,
                        ),
                        child: Text(
                          "Voices Journaling",
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ),
                    ],
                  ],
                );
              },
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.mic),
                      title: Text('Voice Journaling'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JournalingVoicePage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.text_fields),
                      title: Text('Text Journaling'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JournalingTextPage(),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ));
  }
}
