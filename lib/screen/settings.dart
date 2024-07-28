import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text('في الاصدار القادم بأذن الله',
      style: TextStyle(
        fontSize: 24,
        fontWeight:FontWeight.w400,
        color: Theme.of(context).primaryColor, 
      ),
      ))
    );
  }
}