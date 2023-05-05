import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../provider/google_play_provider.dart';
import '../apps_screen/app_homescreen.dart';
import '../books_screen/books_homescreen.dart';
import '../games_screen/game_homescreen.dart';
import '../offers_screen/offers_homescreen.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {

  GooglePlayProvider? gpsF;
  GooglePlayProvider? gpsT;

  @override
  Widget build(BuildContext context) {

    gpsF = Provider.of<GooglePlayProvider>(context,listen: false);
    gpsT = Provider.of<GooglePlayProvider>(context,listen: true);

    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: gpsT!.bottombarindex,
          onTap: (value) {
            gpsF!.bottombaroption(value);
          },

          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.sports_esports_rounded),label: "Games"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: "Apps"),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),label: "Offers"),
            BottomNavigationBarItem(icon: Icon(Icons.book_rounded),label: "Books"),
          ],

        ),

        body: IndexedStack(
          index: gpsT!.bottombarindex,
          children: [
            Game_HomeScreen(),
            Apps_HomeScreen(),
            Offers_HomeScreen(),
            Books_HomeScreen()
          ],
        ),

      ),
    );
  }
}
