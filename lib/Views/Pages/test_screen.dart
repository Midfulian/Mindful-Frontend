import 'package:flutter/material.dart';

import 'result_screen.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _questionIndex = 0;
  List<int> _selectedAnswers = List.filled(3, -1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Depression, Anxiety and Stress Scale',
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            color: Colors.grey[300],
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Instructions:\n',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Text messages are used for personal, family, business, and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages became an accepted part of many cultures, as happened earlier with...',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[850],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: SizedBox(
              height: 10,
              child: LinearProgressIndicator(
                value: (_questionIndex) / 3,
                color: Colors.blue,
                backgroundColor: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: 10),
          for (var i = 0; i < 3; i++)
            Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${i+1}. Question text',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue),
                ),
              ),
              for (var j = 0; j < 4; j++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedAnswers[i] = j;
                      _questionIndex = _selectedAnswers.where((element) => element != -1).length;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: _selectedAnswers[i] == j ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      title: Text(
                        'Answer text',
                        style: TextStyle(
                          color: _selectedAnswers[i] == j ? Colors.white : Colors.black,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
          ElevatedButton(
          onPressed: _questionIndex == 3 ? () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => ResultScreen()));
          } : null,
          child: Text('Submit', style: TextStyle(fontSize: 20)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          )
        ),
        ],
      ),
    );
  }
}
