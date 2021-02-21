import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/widgets/appbar.dart';
import 'package:srb_flutter_test/ui/shared/widgets/drawer.dart';

class FixedReply extends StatefulWidget {
  final String title = 'Fixed Reply';
  @override
  _FixedReplyState createState() => _FixedReplyState();
}

class _FixedReplyState extends State<FixedReply> {
  bool val, randFixed;
  onSwitch(val) {
    setState(() {
      this.val = val;
      this.randFixed = val;
    });
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
          onChanged: onSwitch,
          value: val ?? false,
        ),
      ])), //6afdbe
      body: SafeArea(
        minimum: EdgeInsets.all(10.0),
        child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 5.0,
            children: [
              Row(children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'List of replies',
                    textScaleFactor: 1.25,
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(child: ListTile(
                  leading:Checkbox(value: randFixed ?? false, onChanged: onSwitch),
                  title: Text('Shuffled reply for all incoming',
                      ),)
                )
              ]),
              Container(
                padding: EdgeInsets.all(5.0),
                height: 200.0,
                margin: EdgeInsets.all(5.0),
                color: Color(0xFF222222),
                child: ListView(shrinkWrap: true, children: [
                  ListTile(
                    title: Text("Okay"),
                    trailing: OutlineButton(
                      onPressed: () {},
                      textColor: Colors.red,
                      child: Icon(Icons.remove),
                    ),
                  )
                ]),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 5, child: TextField()),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed:
                                () {}, //TODO: insert ListTiles and create action for  button
                            icon: Icon(Icons.send)))
                  ]),
              Divider(height: 50.0),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Singly one for all:",
                  textScaleFactor: 1.25,
                  textAlign: TextAlign.left,
                ),
                Row(children: [
                  Expanded(flex: 5, child: TextField()),
                  Expanded(
                    flex: 1,
                    child: InkWell(child: Icon(Icons.send), onTap: () {}),
                    // child: Placeholder(fallbackHeight: 100.0,),
                    // child: IconButton(
                    //     onPressed: () {}, //TODO: set
                    //     icon: Icon(Icons.send)),
                  )
                ]),
              ]),
            ]),
      ),
      drawer: CustomDrawer(),
    );
  }
}

/*AppBar(
    leading: Builder(
      builder: (context) {
        return IconButton(
          icon: Icon(Icons.menu),
          iconSize: 32.0,
          splashRadius: 35.0,
          alignment: Alignment.topLeft,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () => Scaffold.of(context).openDrawer(),
        );
      },
    ),
    backgroundColor: Color(0xFF2a728a),
    centerTitle: true,
    toolbarHeight: 200.0,
    title: Column(
      children: [
        Text(
          'Fixed Reply',
          textScaleFactor: 1.5,
          textAlign: TextAlign.center,
        ),
        Switch(
          activeColor: Color(0xFF6afdbe),
          onChanged: onSwitch, 
          value: val ?? false,
        ),
      ]
    ),
        )*/
