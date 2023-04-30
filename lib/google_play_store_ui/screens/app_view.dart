import 'package:flutter/material.dart';

class App_View_Android extends StatefulWidget {
  const App_View_Android({Key? key}) : super(key: key);

  @override
  State<App_View_Android> createState() => _App_View_AndroidState();
}

class _App_View_AndroidState extends State<App_View_Android> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      ),
    );
  }
}
