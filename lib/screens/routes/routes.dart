import 'package:flutter/material.dart';

import '../onboard/onboard.dart';
import '../user/signup/signup.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoardScreen.id: (context) => const OnBoardScreen(),
  Signup.id: (context) => const Signup(),
};
