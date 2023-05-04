import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/appstore_provider.dart';

class iOS_Search extends StatefulWidget {
  const iOS_Search({Key? key}) : super(key: key);

  @override
  State<iOS_Search> createState() => _iOS_SearchState();
}

class _iOS_SearchState extends State<iOS_Search> {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Premium Items",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
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
                scrollDirection: Axis.vertical,
                itemCount: aspF!.newgamelist.length,
                itemBuilder: (context, index) {
                  return NewGames(
                      gameimage: aspT!.newgamelist[index].gameimage,
                      gamename: aspT!.newgamelist[index].gamename,
                      gametag: aspT!.newgamelist[index].gametag);
                },
              ),
            ),

            








          ],
        ),
      ),
    );
  }

  Widget NewGames({String? gamename, String? gametag, String? gameimage}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),


          Text(
            "$gamename",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "$gametag",
            style: TextStyle(fontSize: 18, color: CupertinoColors.systemGrey3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 250,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage("$gameimage"), fit: BoxFit.fill),
                  color: CupertinoColors.destructiveRed),
            ),
          ),
          SizedBox(height: 20),

        ],
      ),
    );
  }


}
