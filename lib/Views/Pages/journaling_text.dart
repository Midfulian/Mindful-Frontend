import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../note_provider.dart';

class JournalingTextPage extends StatelessWidget {
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final noteProvider = Provider.of<NoteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Journaling',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.black),
            onPressed: () {
              noteProvider.addNote(_titleController.text, _bodyController.text);
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: TextField(
                  controller: _bodyController,
                  decoration: InputDecoration(
                    labelText: 'Body',
                  ),
                  maxLines: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
