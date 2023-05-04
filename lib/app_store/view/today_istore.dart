import 'package:flutter/cupertino.dart';
import 'package:ios_vs_android_demo_ui/app_store/provider/appstore_provider.dart';
import 'package:provider/provider.dart';

class iOS_Today extends StatefulWidget {
  const iOS_Today({Key? key}) : super(key: key);

  @override
  State<iOS_Today> createState() => _iOS_TodayState();
}

class _iOS_TodayState extends State<iOS_Today> {
  AppStoreProvider? aspT;
  AppStoreProvider? aspF;

  @override
  Widget build(BuildContext context) {
    aspT = Provider.of<AppStoreProvider>(context, listen: true);
    aspF = Provider.of<AppStoreProvider>(context, listen: false);

    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          children: [
            Container(
              height: 135,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WEDNESDAY, SEPTEMBER 12",
                    style: TextStyle(color: CupertinoColors.systemGrey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1483381616603-8dde934da56f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&w=1000&q=80"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ],
              ),
            ), //Top bar

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return TodayPost("${aspT!.todayposts[index]}");
                },
                itemCount: aspF!.todayposts.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget TodayPost(String todaypost) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 450,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),

          image: DecorationImage(image: AssetImage("$todaypost"), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
