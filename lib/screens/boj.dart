import 'package:boj/screens/home.dart';
import 'package:boj/screens/word_of_God/word_of_God.dart';
import 'package:flutter/material.dart';

class BOJHome extends StatefulWidget {
  const BOJHome({Key? key}) : super(key: key);
  static String id = "/home";

  @override
  State<BOJHome> createState() => _BOJHomeState();
}

class _BOJHomeState extends State<BOJHome> {
  int currentIndex = 0;

  final screens = [
    const BOJHomePage(),
    const WordOfGod(),
    const Center(
      child: Text("Live Session!"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xFF3523D1),
        selectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.church),
            label: 'Word',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live Session',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        showSelectedLabels: false,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}
