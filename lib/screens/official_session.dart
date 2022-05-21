import 'package:flutter/material.dart';

class OfficailSession extends StatefulWidget {
  const OfficailSession({Key? key}) : super(key: key);

  @override
  State<OfficailSession> createState() => _OfficailSessionState();
}

class _OfficailSessionState extends State<OfficailSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Official Sessions"),
        actions: [Icon(Icons.search)],
      ),
      body: Column(children: [
        Expanded(
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
                      title: Text('Official $int'),
                      subtitle: const Text('Maelezo kidogo hapa...')),
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
