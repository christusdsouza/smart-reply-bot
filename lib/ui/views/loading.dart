import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2a728a),
        body: Center(
            child: Column(
      children: [
        Text('Smart', textAlign: TextAlign.left),
        Text(
          'Reply Bot',
          textAlign: TextAlign.right,
        )
      ],
    )));
  }
}
