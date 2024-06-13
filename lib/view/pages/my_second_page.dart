import 'package:flutter/material.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.search,
          size: 100.0,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(height: 20.0),
        Text(
          'This is your search page. Here you can search for various items.',
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}