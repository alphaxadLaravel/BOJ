import 'package:boj/screens/summary.dart';
import 'package:flutter/material.dart';

import '../screens/live_session.dart';
import '../screens/official_session.dart';

class Navigationdrawer extends StatelessWidget {
  const Navigationdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LiveSession()));
                  },
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/alpha.jpg'),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Alphaxad Jozee Kakulu"),
                          SizedBox(height: 4),
                          Text("alphaxadjozee8@gmail.com")
                        ],
                      ),
                    ],
                  )),
                )),
            ListTile(
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            ListTile(
              title: const Text(
                "Live Session",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.live_tv),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LiveSession()));
              },
            ),
            ListTile(
              title: const Text(
                "Official Session",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.people),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OfficailSession()));
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                "Word of God",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.book),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            ListTile(
              title: const Text(
                "Summary",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.list),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Summary()));
              },
            ),
            ListTile(
              title: const Text(
                "Special Word",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.bookmark),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text(
                "Notification",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.notifications),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
            ListTile(
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.black),
              ),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
          ],
        ),
      ),
    );
  }
}
