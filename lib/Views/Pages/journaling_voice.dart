import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../../note_provider.dart';

class JournalingVoicePage extends StatefulWidget {
  @override
  _JournalingVoicePageState createState() => _JournalingVoicePageState();
}

class _JournalingVoicePageState extends State<JournalingVoicePage> {
  final recorder = FlutterSoundRecorder();

  @override
  void initState() {
    super.initState();
    initRecorder();
  }

  @override
  void dispose() {
    recorder.closeRecorder();
    super.dispose();
  }

  Future<void> initRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('Microphone permission not granted');
    }
    await recorder.openRecorder();
    recorder.setSubscriptionDuration(const Duration(milliseconds: 500));
  }

  Future<void> record() async {
    final noteProvider = Provider.of<NoteProvider>(context, listen: false);
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final String filePath = '${appDocDir.path}/audio${noteProvider.voiceNotes.length+1}.aac';
    await recorder.startRecorder(toFile: filePath);
  }

  Future<void> stop() async {
    await recorder.stopRecorder();
  }

  Future<void> requestStoragePermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Journaling', style: TextStyle(color: Colors.black, fontSize: 20.0)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.black),
            onPressed: () async {
              final audioPath = await recorder.stopRecorder();
              if (audioPath != null) {
                await requestStoragePermission();
                final noteProvider = Provider.of<NoteProvider>(context, listen: false);
                final Directory? appDocDir = await getExternalStorageDirectory();
                final String filePath = '${appDocDir?.path}/audio${noteProvider.voiceNotes.length+1}.aac';
                final audioFile = File(audioPath);
                await audioFile.copy(filePath);
                noteProvider.addVoiceNote(filePath);
              }
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<RecordingDisposition>(
                stream: recorder.onProgress,
                builder: (context, snapshot) {
                  final duration = snapshot.data?.duration ?? Duration.zero;
                  String twoDigits(int n) => n.toString().padLeft(2, '0');
                  final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
                  final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
                  return Text('$twoDigitMinutes:$twoDigitSeconds', style: TextStyle(fontSize: 40.0));
                }),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                if (recorder.isRecording) {
                  await stop();
                } else {
                  await record();
                }
                setState(() {});
              },
              child: Icon(recorder.isRecording ? Icons.stop : Icons.mic, size: 80.0),
            ),
          ],
        ),
      ),
    );
  }
}