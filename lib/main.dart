import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/shared/utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Smart Reply Bot',
        theme: ThemeData.dark(),
        initialRoute: '/home',
        routes: {
          '/': (BuildContext context) => Routes.loading,
          '/home': (BuildContext context) => Routes.home,
          '/instant': (BuildContext context) => Routes.instant,
          '/fixed': (BuildContext context) => Routes.fixed,
          '/logic': (BuildContext context) => Routes.logic,
          '/sched': (BuildContext context) => Routes.sched,
          '/bot': (BuildContext context) => Routes.bot,
          '/setting': (BuildContext context) => Routes.setting,
          '/about': (BuildContext context) => Routes.about,
          '/contrib': (BuildContext context) => Routes.contrib,
          '/help': (BuildContext context) => Routes.help,
        });
  }
}
