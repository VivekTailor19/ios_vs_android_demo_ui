import 'package:flutter/cupertino.dart';

class iOS_Home extends StatefulWidget {
  const iOS_Home({Key? key}) : super(key: key);

  @override
  State<iOS_Home> createState() => _iOS_HomeState();
}

class _iOS_HomeState extends State<iOS_Home> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Welcome to iOS"),),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          CupertinoActivityIndicator(color: CupertinoColors.destructiveRed,animating: true,radius: 18),

          CupertinoButton(child: Text("Setting UI"), onPressed: () => Navigator.pushNamed(context, "ios_setting"),),
          CupertinoButton(child: Text("Cupertino Shopping"), onPressed: () => Navigator.pushNamed(context, "ios_shopping"),),
          CupertinoButton(child: Text("App Store"), onPressed: () => Navigator.pushNamed(context, "ios_setting"),),

          Text("iOS UI's"),
        ],
      ),

    );
  }
}
