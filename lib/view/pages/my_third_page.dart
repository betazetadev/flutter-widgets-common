import 'package:flutter/material.dart';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.person,
            size: 100.0,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(height: 20.0),
          Text(
            'This is your profile page. Here you can view and edit your personal information.',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}