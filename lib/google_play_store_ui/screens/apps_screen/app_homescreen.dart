import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/screens/apps_screen/apps_categories.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/screens/apps_screen/apps_children.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/screens/apps_screen/apps_foryou.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/screens/apps_screen/apps_topcharts.dart';

class Apps_HomeScreen extends StatefulWidget {
  const Apps_HomeScreen({Key? key}) : super(key: key);

  @override
  State<Apps_HomeScreen> createState() => _Apps_HomeScreenState();
}

class _Apps_HomeScreenState extends State<Apps_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,

        child: Scaffold(
          appBar: AppBar(
            elevation: 0.3,
            backgroundColor: Colors.white,
            flexibleSpace: Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(height: 45,
                child: TextField(

                  style: TextStyle(color: Colors.amber,),

                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(

                      filled: true,
                      fillColor: Colors.white,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color:Colors.black12)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color:Colors.black12)
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.menu_rounded,color: Colors.black54,),
                      suffixIcon: Icon(Icons.keyboard_voice_rounded,color: Colors.black54,),
                      hintText: "Search for apps & games",
                      hintStyle: TextStyle(fontSize: 13,color: Colors.black38)

                  ),
                ),
              ),
            ),


            bottom: TabBar(

              isScrollable: true,

              indicatorColor: Colors.teal,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.teal,
              unselectedLabelColor: Colors.black54,

              tabs: [
                Tab(text: "For you",),
                Tab(text: "Top charts"),
                Tab(text: "Children"),
                Tab(text: "Categories",)
              ],
            ),
          ),

          body: TabBarView(

            children: [
              Apps_Foryou(),
              Apps_TopCharts(),
              Apps_Children(),
              Apps_Categories(),
            ],
          ),

        ),
      ),
    );
  }
}
