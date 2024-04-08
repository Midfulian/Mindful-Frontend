import 'package:flutter/cupertino.dart';

class NoteProvider extends ChangeNotifier {
  Map<String,String> _notes = {};
  List<String> _voiceNotes = [];

  Map<String,String> get notes => _notes;
  List<String> get voiceNotes => _voiceNotes;

  void addNote(String title, String body) {
    _notes[title] = body;
    notifyListeners();
  }

  void addVoiceNote (String voiceNote) {
    _voiceNotes.add(voiceNote);
    notifyListeners();
  }
}