import 'package:flutter/material.dart';
import 'package:srb_flutter_test/ui/views/home.dart';
import 'package:srb_flutter_test/ui/views/loading.dart';

class Routes {
  Routes._();

  static final home = Home();
  static final loading = LoadingScreen();
  static final instant = InstantReply();
  static final bot = InsaneBot();
  static final fixed = FixedReply();
  static final logic = LogicReply();
  static final sched = ScheduledReply();
  static final setting = Settings();
  static final about = About();
  static final contrib = Contribute();
  static final help = Help();

}
