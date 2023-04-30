import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offers_HomeScreen extends StatefulWidget {
  const Offers_HomeScreen({Key? key}) : super(key: key);

  @override
  State<Offers_HomeScreen> createState() => _Offers_HomeScreenState();
}

class _Offers_HomeScreenState extends State<Offers_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text("Offers....")),
      ),
    );
  }
}
