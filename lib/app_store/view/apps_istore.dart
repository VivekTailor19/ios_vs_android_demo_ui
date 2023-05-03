import 'package:flutter/cupertino.dart';

class iOS_Apps extends StatefulWidget {
  const iOS_Apps({Key? key}) : super(key: key);

  @override
  State<iOS_Apps> createState() => _iOS_AppsState();
}

class _iOS_AppsState extends State<iOS_Apps> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text("Apps"),
      ),
    );
  }
}
