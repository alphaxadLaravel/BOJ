import 'package:flutter/material.dart';

class LiveSession extends StatefulWidget {
  const LiveSession({Key? key}) : super(key: key);
  static String id = "/LiveSession";

  @override
  State<LiveSession> createState() => _LiveSessionState();
}

class _LiveSessionState extends State<LiveSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Live Sessions"),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: Column(
        children: [Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (ctx, int) {
              return Card(
                child: InkWell(
                  onTap: () {},
                  child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/alpha.jpg'),
                      ),
                      title: Text('Session $int'),
                      subtitle: const Text(
                          'Maelezo kidogo hapa...')),
                ),
              );
            },
          ),
        ),] 
      ),
    );
  }
}
