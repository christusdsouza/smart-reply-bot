import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class HelpPage extends StatefulWidget {
  final title = 'Looking for help?';
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool val;
  onSwitch(val) {
    setState(() => this.val = val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
          widget: Column(
        children: [
          Text(
            widget.title,
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
          ),
        ]
      )), //6afdbe
      drawer: CustomDrawer(),
      floatingActionButton: SafeArea(
        minimum: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Contact Us'),
            IconButton(
              icon: Icon(Icons.mail),
              iconSize: 30.0,
              color: Color(0xFF6afdbe),
            //TODO: Link Github, Mail and handles, also Open in mail, mailto:christusdsouza+srb@yahoo.in
              onPressed: () => {},
            ),
          ]
        ),
      ),
    );
  }
}