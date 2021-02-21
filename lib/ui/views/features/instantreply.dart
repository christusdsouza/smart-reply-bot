import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class InstantReply extends StatefulWidget {
  final title = 'Instant Reply';
  @override
  _InstantReplyState createState() => _InstantReplyState();
}

class _InstantReplyState extends State<InstantReply> {
  var timeout, sliderStat, switchVal; // = ValueListenableProvider()
  onSwitch(val) {
    if (val is double) {
      sliderStat = 'Timeout: ${val.toInt()}s';
      setState(() => this.timeout = val);
    } else if (val is bool) setState(() => this.switchVal = val);
  }
  dcr(val) => this.onSwitch(this.timeout-=5.0);
  incr(val) => this.onSwitch(this.timeout+=5.0);

  @override
  initState() {
    super.initState();
    // onSwitch(_);R
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CAppBar(
          widget: Column(children: [
        Text(
          widget.title,
          textScaleFactor: 1.5,
          textAlign: TextAlign.center,
        ),
        Switch(
          activeColor: Color(0xFF6afdbe),
          value: this.switchVal ?? false,
          onChanged: onSwitch,
        ),
      ])), //6afdbe
      /* 
      x   - x
      [xx - xx
        x]
      xx  - x
      */
      body: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Row(children: [
          // First Column
          Column(children: [
            Expanded(
              flex: 1,
              child: Column(children: [
                Text(this.sliderStat ?? 'Timeout: 5s'),
                Row(children: [
                  IconButton(
                    iconSize: 16.0,
                    splashColor: Colors.red,
                    // splashRadius: 4.0,
                    icon: Icon(Icons.remove),
                    onPressed: () => dcr,
                  ),
                  Slider(
                    value: this.timeout ?? 5.0,
                    min: 5.0,
                    max: 30.0,
                    divisions: 5,
                    onChanged: onSwitch,
                  ),
                  IconButton(
                    iconSize: 16.0,
                    splashRadius: 4.0,
                    icon: Icon(Icons.add),
                    onPressed: () => incr,
                  ),
                ]),
              ]),
            )
          ]),
          // Second Column
          Expanded(
            flex: 1,
            child: Column(
              children: [
              Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  spacing: 5.0,
                  runAlignment: WrapAlignment.start,
                  // crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    Text('Load File: ', textAlign: TextAlign.right),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Wrap(direction: Axis.horizontal, children: [
                        Text(
                          '\tfile-name',
                        ) // TODO: Can you fix overflow for larger filenames??
                      ]),
                    ),
                    Icon(Icons.check_circle_rounded, color: Colors.green),
                  ])
            ]),
          ),
        ]),
      ),
      drawer: CustomDrawer(),
    );
  }
}
