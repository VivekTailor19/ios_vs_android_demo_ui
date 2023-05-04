import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/appstore_provider.dart';

class iOS_Apps extends StatefulWidget {
  const iOS_Apps({Key? key}) : super(key: key);

  @override
  State<iOS_Apps> createState() => _iOS_AppsState();
}

class _iOS_AppsState extends State<iOS_Apps> {

  AppStoreProvider? aspT;
  AppStoreProvider? aspF;

  @override
  Widget build(BuildContext context) {

    aspT = Provider.of<AppStoreProvider>(context,listen: true);
    aspF = Provider.of<AppStoreProvider>(context,listen: false);

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
                        "Apps",
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
                itemCount: aspF!.newapplist.length,
                itemBuilder: (context, index) {
                  return NewApps(appimage: aspT!.newapplist[index].appimage, appname: aspT!.newapplist[index].appname, apptag: aspT!.newapplist[index].apptag );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Great Apps for iOS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                Text("See All",style: TextStyle(color: CupertinoColors.systemBlue),)
              ],
            ),


            Expanded(

              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: aspF!.newapplist.length,
                itemBuilder: (context, index) {
                  return AppTile(
                      appimage: aspT!.newapplist[index].appimage,
                      appname: aspT!.newapplist[index].appname,
                      apptag: aspT!.newapplist[index].apptag);
                },
              ),
            ),




          ],
        ),
      ),
    );
  }

  Widget NewApps({String? appname,String? apptag, String? appimage})
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(height: 1, color: CupertinoColors.systemGrey4,),
          Text("NEW GAME",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold,color: CupertinoColors.systemBlue),),
          Text("$appname",style: TextStyle(fontSize: 25),),
          Text("$apptag",style: TextStyle(fontSize: 18, color: CupertinoColors.systemGrey3),),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(height: 250,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: NetworkImage("$appimage"),fit: BoxFit.contain),
                  color: CupertinoColors.white
              ),),
          ),
          SizedBox(height: 20),
          Container(height: 1, color: CupertinoColors.systemGrey4,),
        ],
      ),);
  }

  Widget AppTile({String? appname, String? apptag, String? appimage}) {
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
                      image: DecorationImage(image: NetworkImage("$appimage"),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width:240,child: Text("$appname",style: TextStyle(fontSize: 23),overflow: TextOverflow.ellipsis)),
                      SizedBox(width:240,child: Text("$apptag",style: TextStyle(fontSize: 18,color: CupertinoColors.systemGrey2,),overflow: TextOverflow.ellipsis,),),
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
