import 'package:flutter/material.dart';

import '../../components/navigation_drawer.dart';

class WordOfGod extends StatefulWidget {
  const WordOfGod({Key? key}) : super(key: key);

  @override
  State<WordOfGod> createState() => _WordOfGodState();
}

class _WordOfGodState extends State<WordOfGod> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  toggleDrawer() async {
    if (scaffoldKey.currentState != null &&
        scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState?.openEndDrawer();
    } else {
      scaffoldKey.currentState?.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("B O J"),
          leading: IconButton(
              onPressed: () {
                toggleDrawer();
              },
              icon: const Icon(Icons.menu)),
          actions: [
            GestureDetector(onTap: () {}, child: const Icon(Icons.sunny)),
            SizedBox(
              width: size.width * 0.03,
            )
          ],
          elevation: 1,
          bottom: const TabBar(tabs: [
            Tab(
              text: "Official Word",
            ),
            Tab(
              text: "Special Word",
            ),
            Tab(
              text: "Summary",
            ),
          ]),
        ),
        drawer: const Navigationdrawer(),
        body: TabBarView(children: [
          Center(
            child: Text("tab 1"),
          ),
          Center(
            child: Text("tab 2"),
          ),
          Center(
            child: Text("tab 3"),
          )
        ]),
      ),
    );
  }
}
