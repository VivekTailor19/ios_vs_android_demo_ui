import 'package:flutter/cupertino.dart';
import 'package:ios_vs_android_demo_ui/app_store/view/apps_istore.dart';
import 'package:ios_vs_android_demo_ui/app_store/view/games_istore.dart';
import 'package:ios_vs_android_demo_ui/app_store/view/search_istore.dart';
import 'package:ios_vs_android_demo_ui/app_store/view/today_istore.dart';
import 'package:ios_vs_android_demo_ui/app_store/view/updates_istore.dart';

class App_Store_HomeScreen extends StatefulWidget {
  const App_Store_HomeScreen({Key? key}) : super(key: key);

  @override
  State<App_Store_HomeScreen> createState() => _App_Store_HomeScreenState();
}

class _App_Store_HomeScreenState extends State<App_Store_HomeScreen> {
  List<Widget> appstorescreens = [
    iOS_Today(),
    iOS_Games(),
    iOS_Apps(),
    iOS_Updates(),
    iOS_Search()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.device_phone_portrait,
              ),
              label: "Today"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.rocket_fill,
              ),
              label: "Games"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.layers_alt_fill,
              ),
              label: "Apps"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.arrow_down_square_fill,
              ),
              label: "Updates"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
              ),
              label: "Search"),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return appstorescreens[index];
          },
        );
      },
    );
  }
}
