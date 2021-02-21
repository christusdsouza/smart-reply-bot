import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class Settings extends StatefulWidget {
  final title = 'Settings';
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool val;
  onSwitch(val) {
    setState(() => this.val = val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
          size: kToolbarHeight,
          widget: Column(children: [
            Text(
              widget.title,
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
            ),
          ])), //6afdbe
      body: Column(children: <Widget>[
        SwitchListTile(
          title: Text('Theme[default: Dark]'),
          value: this.val ?? false,
          // onChanged: onSwitch,
        ),
        Divider(),
        SwitchListTile(
          title: Text('Use the same model for Instant replies and Insane bot'),
          value: this.val ?? false,
          onChanged: onSwitch,
        ),
        Divider(),
        ListTile(
            title: Text('Disable Application Services completely'),
            onTap: () => {}),
        Divider(),
        ListTile(
          title: Text('Re-check/Re-enable Application Services'),
          onTap: () => {},
        ),
      ]),
      drawer: CustomDrawer(),
    );
  }
}
