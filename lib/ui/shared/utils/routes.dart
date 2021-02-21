import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/views/others/about.dart';
import 'package:srb_flutter_test/ui/views/others/contrib.dart';
import 'package:srb_flutter_test/ui/views/others/feedback.dart';
import 'package:srb_flutter_test/ui/views/features/fixedreply.dart';
import 'package:srb_flutter_test/ui/views/others/help.dart';
import 'package:srb_flutter_test/ui/views/features/home.dart';
import 'package:srb_flutter_test/ui/views/features/insanebot.dart';
import 'package:srb_flutter_test/ui/views/features/instantreply.dart';
import 'package:srb_flutter_test/ui/views/others/loading.dart';
import 'package:srb_flutter_test/ui/views/features/logicreply.dart';
import 'package:srb_flutter_test/ui/views/features/schedndreply.dart';
import 'package:srb_flutter_test/ui/views/others/settings.dart';

class Routes {
  Routes._();

  static final routes = {
    '/': (BuildContext context) => Home(),
    '/loading': (BuildContext context) => LoadingScreen(),
    '/imstant': (BuildContext contRext) => InstantReply(),
    '/fixed': (BuildContext context) => FixedReply(),
    '/logic': (BuildContext context) => LogicReply(),
    '/sched': (BuildContext context) => ScheduledMessages(),
    '/bot': (BuildContext context) => InsaneBot(),
    '/setting': (BuildContext context) => Settings(),
    '/about': (BuildContext context) => AboutPage(),
    '/contrib': (BuildContext context) => ContributionPage(),
    '/help': (BuildContext context) => HelpPage(),
    '/feedfrm': (BuildContext context) => FeedbackForm(),
  };
}
