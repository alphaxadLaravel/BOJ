import 'package:flutter/material.dart';

class BOJHome extends StatefulWidget {
  const BOJHome({Key? key}) : super(key: key);
  static String id = "/home";

  @override
  State<BOJHome> createState() => _BOJHomeState();
}

class _BOJHomeState extends State<BOJHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.person)],
        title: Text("BOJ"),
      ),
      body: Center(child: Text("Home")),
    );
  }
}
