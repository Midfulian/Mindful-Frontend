import 'package:flutter/material.dart';
import 'package:gr_project/models/note_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sound/flutter_sound.dart';

import '../my_space_screen/journaling_text.dart';
import '../my_space_screen/journaling_voice.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Space'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = constraints.maxWidth;
        final double screenHeight = constraints.maxHeight;
        return ListView(
          children: <Widget>[
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
            const ExpansionTile(
              title: Text('your Reports'),
              children: <Widget>[
                ListTile(
                  title: Text('Report 1'),
                ),
                ListTile(
                  title: Text('Report 2'),
                ),
              ],
            ),
          ],
        );
      }),
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
                              builder: (context) =>
                                JournalingVoicePage()));
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