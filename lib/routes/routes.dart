import 'package:boj/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../screens/onboard/onboard.dart';
import '../screens/signup/signup.dart';

final Map<String, WidgetBuilder> routes = {
  BOJHome.id: (context) => const BOJHome(),
  OnBoardScreen.id: (context) => const OnBoardScreen(),
  Signup.id: (context) => const Signup(),
};
