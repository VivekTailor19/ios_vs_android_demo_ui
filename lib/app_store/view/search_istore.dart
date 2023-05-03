import 'package:flutter/cupertino.dart';

class iOS_Search extends StatefulWidget {
  const iOS_Search({Key? key}) : super(key: key);

  @override
  State<iOS_Search> createState() => _iOS_SearchState();
}

class _iOS_SearchState extends State<iOS_Search> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text("Search"),
      ),
    );
  }
}
