import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  @override
  MyFirstPageState createState() => MyFirstPageState();
}

class MyFirstPageState extends State<MyFirstPage> {
  bool _isPhoneDeleted = false;
  bool _isNotificationEnabled = true;
  bool _isDarkModeEnabled = false;
  double _volumeValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.map),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Map', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('Open map view'),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Map tapped'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.photo),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Photos', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('View your photos'),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Photos tapped'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Phone', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          if(!_isPhoneDeleted)
                            Chip(
                              avatar: Icon(Icons.numbers),
                              label: Text('123-456-7890'),
                              onDeleted: () {
                                setState(() {
                                  _isPhoneDeleted = true;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Phone number deleted'),
                                  ),
                                );
                              },
                            ),
                        ],
                      ),
                      Text('Access phone features'),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.navigate_next),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Phone tapped'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Interactive Widgets',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Enable Notifications', style: TextStyle(fontSize: 18)),
                  Spacer(),
                  Switch(
                    value: _isNotificationEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        _isNotificationEnabled = value;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Notifications ${value ? 'enabled' : 'disabled'}'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Dark Mode', style: TextStyle(fontSize: 18)),
                  Spacer(),
                  Checkbox(
                    value: _isDarkModeEnabled,
                    onChanged: (bool? value) {
                      setState(() {
                        _isDarkModeEnabled = value ?? false;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Dark Mode ${value ?? false ? 'enabled' : 'disabled'}'),
                          )
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Volume', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                  SizedBox(width: 20),
                  Text(_volumeValue.toStringAsFixed(2)),
                  Spacer(),
                  Slider(
                    value: _volumeValue,
                    onChanged: (double value) {
                      setState(() {
                        _volumeValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
