import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class LogicReply extends StatefulWidget {
  final title = 'Semi Auto\nLogic Based Reply';
  @override
  _LogicReplyState createState() => _LogicReplyState();
}

class _LogicReplyState extends State<LogicReply> {
  bool val;
  int i = 0;
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
      body: SafeArea(
        minimum: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Add Statements:',textScaleFactor: 1.25),
          Divider(),
          Container(
            color: Color(0xFF222222),
            height: 400.0,
            child: ListView(shrinkWrap: true, children: [
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
              ListTile(title: Text('Okay ${i++}')),
            ]),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.add_circle_rounded),
                iconSize: 44.0,
                color: Color(0xFF2a728a),
                onPressed: () {}, //TODO: Append to List, implement parser/eval for basic lexico string patterns and this is an AUTO reply, default timeout 5s
              ),
            ]
          ),
        ]),
      ),
      drawer: CustomDrawer(),
    );
  }
}
