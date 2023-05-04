import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/appstore_provider.dart';

class iOS_Games extends StatefulWidget {
  const iOS_Games({Key? key}) : super(key: key);

  @override
  State<iOS_Games> createState() => _iOS_GamesState();
}

class _iOS_GamesState extends State<iOS_Games> {
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
                        "Games",
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

            Container(
              height: 360,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: aspF!.newgamelist.length,
                itemBuilder: (context, index) {
                  return NewGames(
                      gameimage: aspT!.newgamelist[index].gameimage,
                      gamename: aspT!.newgamelist[index].gamename,
                      gametag: aspT!.newgamelist[index].gametag);
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discover AR Gaming",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                Text("See All",style: TextStyle(color: CupertinoColors.systemBlue),)
              ],
            ),


            Expanded(

              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: aspF!.newgamelist.length,
                itemBuilder: (context, index) {
                  return GameTile(
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
          Container(
            height: 1,
            color: CupertinoColors.systemGrey4,
          ),
          Text(
            "NEW GAME",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.systemBlue),
          ),
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
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage("$gameimage"), fit: BoxFit.fill),
                  color: CupertinoColors.destructiveRed),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 1,
            color: CupertinoColors.systemGrey4,
          ),
        ],
      ),
    );
  }

  Widget GameTile({String? gamename, String? gametag, String? gameimage}) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            height: 150,width: 410,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
               //color: CupertinoColors.systemPink,
            ),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: CupertinoColors.systemOrange,
                    image: DecorationImage(image: NetworkImage("$gameimage"),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width:240,child: Text("$gamename",style: TextStyle(fontSize: 23),overflow: TextOverflow.ellipsis)),
                      SizedBox(width:240,child: Text("$gametag",style: TextStyle(fontSize: 18,color: CupertinoColors.systemGrey2,),),),
                      Spacer(),
                      Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment:Alignment.center,
                            child: Text("Get",style: TextStyle(fontWeight: FontWeight.bold,color: CupertinoColors.systemBlue),),
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: CupertinoColors.systemGrey6,
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(20),
                                  right: Radius.circular(20),
                                )),
                          ),
                          SizedBox(width: 10),
                          Text("In-App\nPurchases",style: TextStyle(color: CupertinoColors.systemGrey2,fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 145),
            child: Container(height: 1,width: 240,alignment: Alignment.bottomRight,color: CupertinoColors.systemGrey3,),
          )
        ],
      ),
    );
  }
}
