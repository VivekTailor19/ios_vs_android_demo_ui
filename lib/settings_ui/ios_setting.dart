import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iOS_Setting_UI extends StatefulWidget {
  const iOS_Setting_UI({Key? key}) : super(key: key);

  @override
  State<iOS_Setting_UI> createState() => _iOS_Setting_UIState();
}

class _iOS_Setting_UIState extends State<iOS_Setting_UI> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Hiii........."),
      ),
      child: Center(child: Text("IOS Settings"),),
    );
  }
}
