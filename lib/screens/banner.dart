import 'package:flutter/material.dart';

import '../components/home_card.dart';

class BannerScreen extends StatefulWidget {
  final Homecard item;
  const BannerScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<BannerScreen> createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mwamposa - Dar"),
      ),
      body: Image.asset('assets/images/mwampo.png'),
    );
  }
}
