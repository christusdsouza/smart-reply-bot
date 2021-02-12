import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.all(5.0), 
            children: <Widget>[
              Container(color: Color(0xFF2a728a),height: 175.0,),
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Home'),
                onTap: () => Navigator.pushReplacementNamed(context, '/home'),
              ), // Home
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Instant Reply'),
                onTap: () => Navigator.pushReplacementNamed(context, '/imstant'),
              ), // Instant Reply
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Fixed Reply'),
                onTap: () => Navigator.pushReplacementNamed(context, '/fixed'),
              ), // Fixed Reply
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Logic based reply'),
                onTap: () => Navigator.pushReplacementNamed(context, '/logic'),
              ), // Logic
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Scheduler/DND timed'),
                onTap: () => Navigator.pushReplacementNamed(context, '/sched'),
              ), // Scheduler
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Ins@ne Bot'),
                onTap: () => Navigator.pushReplacementNamed(context, '/insanebot'),
              ), // InsaneBot
              Divider(),
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Settings'),
                onTap: () => Navigator.pushReplacementNamed(context, '/setting'),
              ), // Settings
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('About'),
                onTap: () => Navigator.pushReplacementNamed(context, '/about'),
              ), // About
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Contribute'),
                onTap: () => Navigator.pushReplacementNamed(context, '/contrib'),
              ), // Contribute
              ListTile(
                contentPadding: EdgeInsets.only(left:5.0),
                title: Text('Help'),
                onTap: () => Navigator.pushReplacementNamed(context, '/help'),
              ), // Help/Info
             ], 
          ),
    );
  }
}
