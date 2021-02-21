import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class AboutPage extends StatefulWidget {
  final title = 'About Smart Reply Bot';
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool val;
  onSwitch(val) {
    setState(() => this.val = val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
          widget: Text(
        widget.title,
        textScaleFactor: 1.25,
        textAlign: TextAlign.center,
      )), //6afdbe
      body: Center(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(),
            ]),
      )),
      drawer: CustomDrawer(),
    );
  }
}
