import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Books_HomeScreen extends StatefulWidget {
  const Books_HomeScreen({Key? key}) : super(key: key);

  @override
  State<Books_HomeScreen> createState() => _Books_HomeScreenState();
}

class _Books_HomeScreenState extends State<Books_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text("Books..")),
      ),
    );
  }
}
