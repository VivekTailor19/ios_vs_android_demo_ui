import 'package:flutter/cupertino.dart';

class Cupertino_Search extends StatefulWidget {
  const Cupertino_Search({Key? key}) : super(key: key);

  @override
  State<Cupertino_Search> createState() => _Cupertino_SearchState();
}

class _Cupertino_SearchState extends State<Cupertino_Search> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Center(child: Text("Shopping")));
  }
}
