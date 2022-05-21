import 'package:boj/screens/boj.dart';
import 'package:boj/screens/live_session.dart';
import 'package:boj/screens/login.dart';
import 'package:boj/screens/onboard/onboard.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardScreen.id: (context) => const OnBoardScreen(),
  Login.id: (context) => const Login(),
  BOJHome.id: (context) => const BOJHome(),
  LiveSession.id: (context) => const LiveSession(),
};
