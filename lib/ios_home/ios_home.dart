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
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(middle: Text("Welcome to iOS",style: TextStyle(fontSize: 25),),),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            CupertinoActivityIndicator(color: CupertinoColors.destructiveRed,animating: true,radius: 18),

            CupertinoButton(child: Text("Setting UI",style: TextStyle(fontSize: 30),), onPressed: () => Navigator.pushNamed(context, "ios_setting"),),
            CupertinoButton(child: Text("Cupertino Shopping",style: TextStyle(fontSize: 30),), onPressed: () => Navigator.pushNamed(context, "cupertinostore"),),
            CupertinoButton(child: Text("App Store",style: TextStyle(fontSize: 30),), onPressed: () => Navigator.pushNamed(context, "appstore"),),


          ],
        ),
      ),

    );
  }
}
