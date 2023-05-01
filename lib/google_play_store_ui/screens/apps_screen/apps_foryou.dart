
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/provider/google_play_provider.dart';
import 'package:provider/provider.dart';

class Apps_Foryou extends StatefulWidget {
  const Apps_Foryou({Key? key}) : super(key: key);

  @override
  State<Apps_Foryou> createState() => _Apps_ForyouState();
}

class _Apps_ForyouState extends State<Apps_Foryou> {

  GooglePlayProvider? gpT;
  GooglePlayProvider? gpF;

  @override
  Widget build(BuildContext context) {

    gpT = Provider.of<GooglePlayProvider>(context,listen: true);
    gpF = Provider.of<GooglePlayProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(title:Text("Recommednded for you",style: TextStyle(fontWeight: FontWeight.bold),), trailing: Icon(Icons.arrow_forward_rounded),),
            Container(
              height: 130,
              width: double.infinity,

              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return AppTile(
                      appname: gpT!.googleitems[index].appname,
                      apprating: gpT!.googleitems[index].apprating,
                      appimage: gpT!.googleitems[index].appimage,
                    );

                  },
                  itemCount: gpF!.googleitems.length,
                  scrollDirection: Axis.horizontal,


                ),
              ),
            ),

            ListTile(title:Text("New & updated apps",style: TextStyle(fontWeight: FontWeight.bold),), trailing: Icon(Icons.arrow_forward_rounded),),
            Container(
              height: 130,
              width: double.infinity,

              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return AppTile(
                      appname: gpT!.googleitems[index].appname,
                      apprating: gpT!.googleitems[index].apprating,
                      appimage: gpT!.googleitems[index].appimage,
                    );

                  },
                  itemCount: gpF!.googleitems.length,
                  scrollDirection: Axis.horizontal,


                ),
              ),
            ),

            ListTile(title:Text("Suggested for you",style: TextStyle(fontWeight: FontWeight.bold),), trailing: Icon(Icons.arrow_forward_rounded),),

            Container(
              height: 130,
              width: double.infinity,

              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return AppTile(
                      appname: gpT!.googleitems[index].appname,
                      apprating: gpT!.googleitems[index].apprating,
                      appimage: gpT!.googleitems[index].appimage,
                    );

                  },
                  itemCount: gpF!.googleitems.length,
                  scrollDirection: Axis.horizontal,


                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget AppTile({String? appname, String? appimage, double? apprating})
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(height: 115,width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 0.4),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage("$appimage"),
                          fit: BoxFit.fill,),

                    ),
                  ),
                  Text("$appname",style: TextStyle(fontSize: 11.5),),
                  Text("$apprating ⭐",style: TextStyle(fontSize: 10.5),)
                ],
              ),
              ),
    );
  }
}
