import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Summary"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Row(
              children: [Icon(Icons.search), Icon(Icons.sort_outlined)],
            ),
          )
        ],
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
                      trailing: Icon(Icons.arrow_forward),
                      title: Text('Summary $int'),
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
