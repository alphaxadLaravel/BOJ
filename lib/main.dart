import 'package:boj/screens/onboard/onboard.dart';
import 'package:boj/screens/routes/routes.dart';
import 'package:flutter/material.dart';

int? isSeen;
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OBJ App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: OnBoardScreen.id,
      routes: routes,
    );
  }
}
