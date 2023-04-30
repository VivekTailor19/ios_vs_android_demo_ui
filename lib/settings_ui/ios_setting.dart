import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iOS_Setting_UI extends StatefulWidget {
  const iOS_Setting_UI({Key? key}) : super(key: key);

  @override
  State<iOS_Setting_UI> createState() => _iOS_Setting_UIState();
}

class _iOS_Setting_UIState extends State<iOS_Setting_UI> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
     // backgroundColor: Colors.blueGrey.shade50,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Color(0xffFF4500),
        middle: Text("Settings UI"),
      ),
      child: Column(
        children: [
          Titletext("Common"),
          Container(height: 20,
            child: Row(
              children: [
                SizedBox(width: 5,),
                Icon(Icons.language) ,
                SizedBox(width: 10,),
                Text("Language",style: TextStyle(fontSize: 15),),
                Spacer(),

                Text("English",style: TextStyle(fontSize: 15),),
                Icon(Icons.arrow_forward_ios),

              ],
            ),
          )

        ],
      )
    );
  }

  Widget Titletext(String title) => Text("$title",style: TextStyle(fontSize:15),);

}
