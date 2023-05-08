import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Android_Home extends StatefulWidget {
  const Android_Home({Key? key}) : super(key: key);

  @override
  State<Android_Home> createState() => _Android_HomeState();
}

class _Android_HomeState extends State<Android_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      appBar: AppBar(title: Text("Welcome to Andriod",style: TextStyle(fontSize: 25),),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            CircularProgressIndicator(color: Colors.red,),

            ElevatedButton(child: Text("Setting UI",style: TextStyle(fontSize: 30),), onPressed: () => Navigator.pushNamed(context, "android_setting"),),
            ElevatedButton(child: Text("PlayStore",style: TextStyle(fontSize: 30),), onPressed: () => Navigator.pushNamed(context, "googleplay"),),
            ElevatedButton(child: Text("Stepper",style: TextStyle(fontSize: 30),), onPressed: () => Navigator.pushNamed(context, "splashstepper"),),


          ],
        ),
      ),

    );
  }
}
