import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/google_play_provider.dart';

class Games_Topcharts extends StatefulWidget {
  const Games_Topcharts({Key? key}) : super(key: key);

  @override
  State<Games_Topcharts> createState() => _Games_TopchartsState();
}

class _Games_TopchartsState extends State<Games_Topcharts> {

  GooglePlayProvider? gppT;
  GooglePlayProvider? gppF;



  @override
  Widget build(BuildContext context) {

    gppT = Provider.of<GooglePlayProvider>(context,listen: true);
    gppF = Provider.of<GooglePlayProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Show installed apps"),
                  Switch(onChanged: (value) {
                    bool input = value;
                    gppF!.checkinstall(input);

                  },
                      value: gppT!.isInstalled)
                ],
              ),
            ),
            Container(
              height: 55,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gppF!.optionlist.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 25,width: 90,alignment: Alignment.center,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15) ,border: Border.all(color: Colors.black12,width: 0.5)),
                      child: Text("${gppT!.optionlist[index].option}",style: TextStyle(fontSize: 12,color: Colors.teal),),
                    ),
                  );

                  },
              ),
            ),

            Container(
              height: 610,

              child: ListView.builder(

                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                     // gppF!.totalphoto(index);
                      Navigator.pushNamed(context, "appview",arguments: index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10,bottom: 10),
                      child: AppTile(
                        no: index+1,
                        appname: gppT!.googleitems[index].appname,
                        apprating: gppT!.googleitems[index].apprating,
                        appimage: gppT!.googleitems[index].appimage,
                      ),
                    ),
                  );

                },
                itemCount: gppF!.googleitems.length,
                scrollDirection: Axis.vertical,


              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget AppTile({String? appname, String? appimage, double? apprating, int? no})
  {
    return Container(
      height: 90,

      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("$no",style: TextStyle(fontSize: 15)),
          ),
          Padding(
            padding: const EdgeInsets.only(right:10),
            child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12,width: 0.4),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage("$appimage"),
                      fit: BoxFit.fill,),

                  ),
                ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$appname",style: TextStyle(fontSize: 18),),
              Text("$apprating ⭐",style: TextStyle(fontSize: 15),),

            ],
          )

        ],
      ),
    );

  }

}
