import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RichText(text: TextSpan(
        children: <InlineSpan>[
        WidgetSpan(child: Icon(Icons.warning)),
        TextSpan(text:'This is a work in progress'),
      ]),
    )));
  }
}
