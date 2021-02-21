import 'package:flutter/material.dart';
import 'dart:async';

import 'package:permission_handler/permission_handler.dart';

class LoadingScreen extends StatefulWidget {
  static const List<Permission> values = <Permission>[
    Permission.calendar,
    Permission.reminders,
    Permission.sensors,
    Permission.sms,
    Permission.storage,
    Permission.ignoreBatteryOptimizations,
    Permission.notification,
    Permission.activityRecognition,
  ];
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pop(context);
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF2a728a),
        body: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
              // crossAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Row(mainAxisSize: MainAxisSize.max, children: [
                    Text(
                      'Smart',
                      textAlign: TextAlign.left,
                      textScaleFactor: 4.5,
                    ),
                  ])
                ]),
                Row(
                    // flex: 5,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Reply Bot',
                          // overflow: TextOverflow.visible,
                          textAlign: TextAlign.right,
                          textScaleFactor: 5.5,
                        ),
                      )
                    ]),
              ]),
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          height: 50.0,
          child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: CircularProgressIndicator(),
                )
              ]),
        ),
      ),
    );
  }
}
