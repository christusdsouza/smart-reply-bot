import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context){
            return IconButton(
            icon: Icon(Icons.menu),
            alignment: Alignment.topLeft,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () => Scaffold.of(context).openDrawer());
          }),
        backgroundColor: Color(0xFF2a728a),
        centerTitle: true,
        toolbarHeight: 200.0,
        title: Text('Smart Reply\nBot', textScaleFactor: 1.5, textAlign: TextAlign.center,)),
      drawer: Drawer(
        //TODO: Any way to increase edge swipe radius for drawers??
        child: Text(''),
      ),
      body: Center(child: Text('')),
    );
  }
}
