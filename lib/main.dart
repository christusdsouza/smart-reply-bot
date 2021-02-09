import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/widgets/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Smart Reply Bot', theme: ThemeData.dark(), home: Home());
  }
}
