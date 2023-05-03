import 'package:flutter/cupertino.dart';

class iOS_Games extends StatefulWidget {
  const iOS_Games({Key? key}) : super(key: key);

  @override
  State<iOS_Games> createState() => _iOS_GamesState();
}

class _iOS_GamesState extends State<iOS_Games> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text("Games"),
      ),
    );
  }
}
