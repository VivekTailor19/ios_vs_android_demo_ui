import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'games_categories.dart';
import 'games_children.dart';
import 'games_foryou.dart';
import 'games_premium.dart';
import 'games_topcharts.dart';

class Game_HomeScreen extends StatefulWidget {
  const Game_HomeScreen({Key? key}) : super(key: key);

  @override
  State<Game_HomeScreen> createState() => _Game_HomeScreenState();
}

class _Game_HomeScreenState extends State<Game_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      DefaultTabController(
        length: 5,

        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
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
              indicatorSize: TabBarIndicatorSize.tab,

              labelColor: Colors.teal,
              unselectedLabelColor: Colors.black54,

              tabs: [
                Tab(text: "For you",),
                Tab(text: "Top charts"),
                Tab(text: "Children"),
                Tab(text: "Premium"),
                Tab(text: "Categories",)
              ],
            ),
          ),

          body: TabBarView(
            children: [
              Games_ForYou(),
              Games_Topcharts(),
              Games_Children(),
              Games_Premium(),
              Games_Categories(),
            ],
          ),

        ),
      ),
    );
  }
}
