import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/utils/routes.dart';
// import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return MaterialApp(
        title: 'Smart Reply Bot',
        theme: ThemeData.dark(),
        initialRoute: '/loading',
        // onUnknownRoute: (settings) {
        //   Navigator.maybePop(context);
        //   return MaterialPageRoute(builder: Routes.routes['/loading']);
        // },
        routes: Routes.routes,
      );
    });
  }
}
