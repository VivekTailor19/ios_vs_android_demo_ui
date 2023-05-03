import 'package:flutter/cupertino.dart';

class iOS_Today extends StatefulWidget {
  const iOS_Today({Key? key}) : super(key: key);

  @override
  State<iOS_Today> createState() => _iOS_TodayState();
}

class _iOS_TodayState extends State<iOS_Today> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text("today"),
      ),
    );
  }
}
