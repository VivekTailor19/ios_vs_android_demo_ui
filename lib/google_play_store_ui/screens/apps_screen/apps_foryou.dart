import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Apps_Foryou extends StatefulWidget {
  const Apps_Foryou({Key? key}) : super(key: key);

  @override
  State<Apps_Foryou> createState() => _Apps_ForyouState();
}

class _Apps_ForyouState extends State<Apps_Foryou> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(title:Text("Recommednded for you",style: TextStyle(fontWeight: FontWeight.bold),), trailing: Icon(Icons.arrow_forward_rounded),),
            ListTile(title:Text("New & updated apps",style: TextStyle(fontWeight: FontWeight.bold),), trailing: Icon(Icons.arrow_forward_rounded),),
            ListTile(leading: Icon(Icons.add_sharp),title:Text("Suggested for you",style: TextStyle(fontWeight: FontWeight.bold),), trailing: Icon(Icons.arrow_forward_rounded),),


          ],
        ),
      ),
    );
  }
}
