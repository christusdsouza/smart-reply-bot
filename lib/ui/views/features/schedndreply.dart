import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class ScheduledMessages extends StatefulWidget {
  final title = 'Scheduled Messages';
  @override
  _ScheduledMessagesState createState() => _ScheduledMessagesState();
}

class _ScheduledMessagesState extends State<ScheduledMessages> {
  bool val, dnd, schtime;
  onSwitch(val) {
    setState(() {
      this.val = val;
      this.dnd = val;
      this.schtime = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
          widget: Column(children: [
        Text(
          widget.title,
          textScaleFactor: 1.5,
          textAlign: TextAlign.center,
        ),
        Switch(
          activeColor: Color(0xFF6afdbe),
          onChanged: onSwitch,
          value: val ?? false,
        ),
      ])), //6afdbe
      body: SafeArea(
        minimum: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SwitchListTile(
              title: Text('Enable DND'),
              value: dnd ?? false,
              onChanged: onSwitch),
          SwitchListTile(
              title: Text('Schedule Time'),
              value: schtime ?? false,
              onChanged: onSwitch),
            Container(
              padding: EdgeInsets.all(5.0),
              height: 200.0,
              margin: EdgeInsets.all(5.0),
              color: Color(0xFF222222),
              child: ListView(shrinkWrap: true, children: [
                ListTile(
                  title: Text("Okay"),
                  trailing: OutlineButton(
                    onPressed: () {},
                    textColor: Colors.red,
                    child: Icon(Icons.remove),
                  ),
                )
              ]),
            ),
        ]),
      ),
      drawer: CustomDrawer(),
    );
  }
}
