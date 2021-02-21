import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class ContributionPage extends StatefulWidget {
  final title = 'Interested?\n\nContribute to\nSmart Reply Bot';
  @override
  _ContributionPageState createState() => _ContributionPageState();
}

class _ContributionPageState extends State<ContributionPage> {
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
            Text('Send us your feedback ->'),
            IconButton(
              icon: Icon(Icons.mail_rounded),
              iconSize: 30.0,
              color: Color(0xFF6afdbe),
              //TODO: Open in mail, mailto:christusdsouza+srb@yahoo.in
              onPressed: () => {},
            ),
          ]
        ),
      ),
    );
  }
}
