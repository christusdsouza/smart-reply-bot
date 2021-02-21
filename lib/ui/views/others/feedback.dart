import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
          children: [
            TextField(
              maxLines: 5,
            ),
            ListTile(
              leading: Icon(Icons.attach_file),
              title: Text('file.extension'),
              //TODO: change add or cancel attachments ADD screenshots
              onTap: () => {},
              trailing: IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () => {},
              ),
            )
          ]
        )),
        //TODO: Divert Contents and recent(compare timestamp) LOG to mail app
        floatingActionButton: SafeArea(
          minimum: EdgeInsets.all(10.0),
          child: IconButton(
            icon: Icon(Icons.outgoing_mail), 
           onPressed: () {},
          ),
        ));
  }
}
