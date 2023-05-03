import 'package:flutter/cupertino.dart';

class iOS_Updates extends StatefulWidget {
  const iOS_Updates({Key? key}) : super(key: key);

  @override
  State<iOS_Updates> createState() => _iOS_UpdatesState();
}

class _iOS_UpdatesState extends State<iOS_Updates> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text("Updates"),
      ),
    );
  }
}
