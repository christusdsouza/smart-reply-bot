import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class Home extends StatefulWidget {
 final title = 'Smart\nReply Bot';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool val;
  onSwitch(val) {
    setState(() => this.val = val);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(widget: Column(
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
      )),
      drawer: CustomDrawer(),
      body: Placeholder(),
      //Navigator(
      // onGenerateRoute: (settings) {
      //   print(settings);
      // }
    );
    //);
  }
}

// appBar: AppBar(
//     leading: Builder(builder: (context) {
      //IconButton(
//           icon: Container(child:Icon(Icons.menu),color:Colors.red[500]),
//           iconSize: 33.0,
//           alignment: Alignment.topLeft,
//           highlightColor: Colors.transparent,
//           splashColor: Colors.transparent,
//           onPressed: () => Scaffold.of(context).openDrawer());
//     }),
//     backgroundColor: Color(0xFF2a728a),
//     centerTitle: true,
//     toolbarHeight: 200.0,
//     title: Text(
//       'Smart Reply\nBot',
//       textScaleFactor: 1.5,
//       textAlign: TextAlign.center,
//     )),
