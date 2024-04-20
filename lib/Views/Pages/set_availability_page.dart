import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SetAvailabilityPage extends StatefulWidget {
  const SetAvailabilityPage({super.key});

  @override
  _SetAvailabilityPageState createState() => _SetAvailabilityPageState();
}

class _SetAvailabilityPageState extends State<SetAvailabilityPage> {
  List<bool> isSwitched = List.generate(7, (_) => false);
  List<String> daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  List<List<List<TimeOfDay>>> selectedTimes = List.generate(
      7,
      (_) => [
            [TimeOfDay(hour: 9, minute: 0), TimeOfDay(hour: 10, minute: 0)]
          ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Set Your Availability'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('update', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < 7; i++)
            Column(
              children: [
                ListTile(
                  leading: Switch(
                    value: isSwitched[i],
                    onChanged: (value) {
                      setState(() {
                        isSwitched[i] = value;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                  title: Text(daysOfWeek[i]),
                  subtitle: !isSwitched[i] ? Text('Unavailable') : null,
                  trailing: isSwitched[i]
                      ? IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              selectedTimes[i].add([
                                TimeOfDay(hour: 9, minute: 0),
                                TimeOfDay(hour: 10, minute: 0)
                              ]);
                            });
                          },
                        )
                      : null,
                ),
                if (isSwitched[i])
                  for (var j = 0; j < selectedTimes[i].length; j++)
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () async {
                              TimeOfDay? pickedTime = await showTimePicker(
                                context: context,
                                initialTime: selectedTimes[i][j][0],
                              );
                              if (pickedTime != null) {
                                setState(() {
                                  selectedTimes[i][j][0] = pickedTime;
                                });
                              }
                            },
                            child: Text(
                                '${selectedTimes[i][j][0].format(context)}'),
                          ),
                          SizedBox(width: 30),
                          Text(' to '),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () async {
                              TimeOfDay? pickedTime = await showTimePicker(
                                context: context,
                                initialTime: selectedTimes[i][j][1],
                              );
                              if (pickedTime != null) {
                                setState(() {
                                  selectedTimes[i][j][1] = pickedTime;
                                });
                              }
                            },
                            child: Text(
                                '${selectedTimes[i][j][1].format(context)}'),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                selectedTimes[i].removeAt(j);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          Container(
            height: 300,
            child: MyWidget(),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<DateTime> blockedDates = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Block Out Dates'),
          trailing: IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
              );
              if (pickedDate != null) {
                setState(() {
                  blockedDates.add(pickedDate);
                });
              }
            },
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: ListView.builder(
            itemCount: blockedDates.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(DateFormat('MMM d').format(blockedDates[index])),
                trailing: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      blockedDates.removeAt(index);
                    });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
