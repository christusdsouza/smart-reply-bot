import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class InsaneBot extends StatefulWidget {
  final title = 'Insane Bot Reply';
  @override
  _InsaneBotState createState() => _InsaneBotState();
}

class _InsaneBotState extends State<InsaneBot> {
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
          Switch(
            activeColor: Color(0xFF6afdbe),
            onChanged: onSwitch,
            value: val ?? false,
          ),
        ]
      )), //6afdbe
      drawer: CustomDrawer(),
    );
  }
}