import 'package:boj/screens/banner.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../components/home_card.dart';
import '../components/navigation_drawer.dart';

class BOJHomePage extends StatefulWidget {
  const BOJHomePage({Key? key}) : super(key: key);

  @override
  State<BOJHomePage> createState() => _BOJHomePageState();
}

class _BOJHomePageState extends State<BOJHomePage> {
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
    return Scaffold(
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
      ),
      drawer: const Navigationdrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SizedBox(
          //   height: size.height * 0.02,
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Home Banners!',
              style: TextStyle(fontSize: 15),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 20 / 9,
              autoPlay: true,
            ),
            items: homecards.map((i) {
              return Builder(
                builder: (
                  BuildContext context,
                ) {
                  return Container(
                    width: size.width * 1,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BannerScreen(item: i)));
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Hero(
                            tag: i,
                            child: Image(
                              image: AssetImage(
                                i.image,
                              ),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          )),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Notification List!',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, int) {
                return Card(
                  child: InkWell(
                    onTap: () {},
                    child: ListTile(
                        leading: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/mwampo.png'),
                        ),
                        title: Text('Notification $int'),
                        subtitle: const Text(
                            'this is a description of the notification')),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
