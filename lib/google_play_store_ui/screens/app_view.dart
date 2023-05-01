import 'package:flutter/material.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/provider/google_play_provider.dart';
import 'package:provider/provider.dart';

class App_View_Android extends StatefulWidget {
  const App_View_Android({Key? key}) : super(key: key);

  @override
  State<App_View_Android> createState() => _App_View_AndroidState();
}

class _App_View_AndroidState extends State<App_View_Android> {

  GooglePlayProvider? gpF;
  GooglePlayProvider? gpT;



  @override
  Widget build(BuildContext context) {

    gpF = Provider.of<GooglePlayProvider>(context,listen: false);
    gpT = Provider.of<GooglePlayProvider>(context,listen: true);

    int i = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_rounded, color: Colors.black54,),
          actions: [
            Icon(Icons.search, color: Colors.black54,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.more_vert_rounded, color: Colors.black54,),
            )
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 0.4),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/5968/5968499.png"),
                            fit: BoxFit.fill,),

                        ),
                      ),
                      SizedBox(width: 10),
                      Container(height: 90,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Google Drive", style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),),
                            Text("Google LLC", style: TextStyle(
                                color: Colors.teal,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),),
                            Text(
                              "Contains ads - In-app purchases", style: TextStyle(
                                color: Colors.black38,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(height: 45,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("4.4 ⭐",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight
                                .bold),),
                          Text("3Cr reviews ⓘ", style: TextStyle(fontSize: 10.5),)
                        ],
                      ),
                      VerticalOwnBar(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.download, size: 18,),
                          Text("90 MB", style: TextStyle(fontSize: 10),)
                        ],
                      ),
                      VerticalOwnBar(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("100Cr+",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight
                                .bold),),
                          Text("Downloads", style: TextStyle(fontSize: 10.5),)
                        ],
                      ),
                      VerticalOwnBar(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("4.4 *",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight
                                .bold),),
                          Text("3Cr reviews ⓘ", style: TextStyle(fontSize: 10.5),)
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 36,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Install",
                      style: TextStyle(fontSize: 15, color: Colors.white),),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius:
                      BorderRadius.horizontal(
                          left: Radius.circular(18), right: Radius.circular(18))

                      ,),),
                ),
                Container(height: 150,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(height: 120,width: 100,
                        decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),
                          color: Colors.red,
                          image: DecorationImage(image: NetworkImage("${gpF!.googleitems[i].imgpack![index]}"),fit: BoxFit.fill ),
                        ),
                        ),
                    );


                  },scrollDirection: Axis.horizontal,
                    itemCount: gpT!.imgpacklength,

                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("About this game", style: TextStyle(
                        fontSize: 21),),
                    Icon(Icons.arrow_forward)


                  ],),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Data safety", style: TextStyle(
                         fontSize: 21),),
                    Icon(Icons.arrow_forward)


                  ],),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Safety starts with understanding how developers colllect and share your data. Data privacy and security practices may vary based on your use, region and age. The developer provided this infromation and may update it over time."
                    , textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 300,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black38)
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ListTile(
                            leading: Icon(Icons.share),
                            title: Text("No data shared with third parties.",style: TextStyle(fontSize: 14.5),),
                            subtitle: Text("Learn more about how developers declare sharing",textAlign: TextAlign.left,style: TextStyle(fontSize: 11),),
                          ),
                          ListTile(
                            leading: Icon(Icons.cloud_upload),
                            title: Text("No data collected.",style: TextStyle(fontSize: 14.5),),
                            subtitle: Text("Learn more about how developers declare sharing",textAlign: TextAlign.left,style: TextStyle(fontSize: 11),),
                          ),
                          ListTile(
                            leading: Icon(Icons.remove_circle_outline_outlined),
                            title: Text("Data isn't encrypted.",style: TextStyle(fontSize: 14.5),),
                          ),
                          ListTile(
                            leading: Icon(Icons.remove_circle_outline_outlined),
                            title: Text("Data can't be deleted.",style: TextStyle(fontSize: 14.5),),
                          ),

                                            ],
                      ),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ratings and reviews", style: TextStyle(
                        fontSize: 21),),
                    Icon(Icons.arrow_forward)


                  ],),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding VerticalOwnBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(margin: EdgeInsets.symmetric(vertical: 8),
        height: 25,
        width: 1,
        color: Colors.black26,),
    );
  }
}
