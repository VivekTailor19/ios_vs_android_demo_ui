import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../shopping_provider/shopping_provider.dart';



class Cupertino_Products extends StatefulWidget {
  const Cupertino_Products({Key? key}) : super(key: key);

  @override
  State<Cupertino_Products> createState() => _Cupertino_ProductsState();
}

class _Cupertino_ProductsState extends State<Cupertino_Products> {

  CupertinoProvider? cpT;
  CupertinoProvider? cpF;

  @override
  Widget build(BuildContext context) {
    cpT = Provider.of<CupertinoProvider>(context, listen: true);
    cpF = Provider.of<CupertinoProvider>(context, listen: false);

    return CupertinoPageScaffold(
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              color: CupertinoColors.systemGrey6,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 10, left: 10),
              child: Text(
                "Cupertino Store",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 10),
                  itemBuilder: (context, index) {
                return Container(height: 80,width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                // color: CupertinoColors.destructiveRed,
                                image: DecorationImage(image: NetworkImage("${cpT!.productlist[index].image}"),fit: BoxFit.fill)
                            ),
                          ),
                          SizedBox(width: 8,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${cpT!.productlist[index].name}", style: TextStyle(fontSize: 25, color: CupertinoColors.black),),
                              Text("${cpT!.productlist[index].price}", style: TextStyle(fontSize: 25, color: CupertinoColors.systemGrey2),),
                            ],),
                          Spacer(),
                          CupertinoButton(
                            child: Icon(CupertinoIcons.add_circled),
                            onPressed: () {
                              showCupertinoModalPopup(context: context, builder: (context) {
                                return CupertinoActionSheet(

                                  title:Text("${cpT!.productlist[index].name} is added in Cart...",
                                    style: TextStyle(fontSize: 25),),

                                );
                              },);
                            cpF!.addcart(index);
                          },)


                        ],
                      ),
                      Divider(color: CupertinoColors.extraLightBackgroundGray,thickness: 2,height: 1,endIndent: 10,indent: 65),
                    ],
                  ),
                );
              },
              itemCount: cpT!.productlist.length),
            ),


        //   Expanded(
        //   child: ListView.builder(
        //     itemBuilder: (context, index) {
        //       return CupertinoListTile(
        //         leading: Container(
        //           height: 200,
        //           width: 200,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(5),
        //             color: CupertinoColors.destructiveRed,
        //             //image: DecorationImage(image: NetworkImage("${cpT!.productlist[index].image}"),fit: BoxFit.fill)
        //           ),
        //         ),
        //         //Image.network("${cpT!.productlist[index].image}",height: 40,),
        //
        //         title: Text(
        //           "${cpT!.productlist[index].name}",
        //           style: TextStyle(fontSize: 25, color: CupertinoColors.black),
        //         ),
        //
        //         subtitle: Text(
        //           "\$ ${cpT!.productlist[index].price}",
        //           style: TextStyle(color: CupertinoColors.black),
        //         ),
        //         trailing: Icon(CupertinoIcons.add_circled),
        //       );
        //     },
        //     itemCount: 3,
        //   ),
        // ),
      ],
    ));
  }
}
