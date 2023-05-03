import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../shopping_provider/shopping_provider.dart';

class Cupertino_Cart extends StatefulWidget {
  const Cupertino_Cart({Key? key}) : super(key: key);

  @override
  State<Cupertino_Cart> createState() => _Cupertino_CartState();
}

class _Cupertino_CartState extends State<Cupertino_Cart> {

  TextEditingController name = TextEditingController(text: "Name");
  TextEditingController email = TextEditingController(text: "Email");
  TextEditingController location = TextEditingController(text: "Location");
  CupertinoProvider? cpT;
  CupertinoProvider? cpF;

  @override
  Widget build(BuildContext context) {
    cpT = Provider.of<CupertinoProvider>(context, listen: true);
    cpF = Provider.of<CupertinoProvider>(context, listen: false);

    return CupertinoPageScaffold(
        child: SingleChildScrollView(
          child: Column(
            children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  color: CupertinoColors.systemGrey6,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(bottom: 10, left: 10),
                  child: Text(
                    "Shopping Cart",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                TabsFields(icon: CupertinoIcons.person_alt,controller: name),
                TabsFields(icon: CupertinoIcons.mail_solid,controller: email),
                TabsFields(icon: CupertinoIcons.location_solid,controller: location),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                  child: Row(children: [
                    Icon(CupertinoIcons.stopwatch_fill,color: CupertinoColors.systemGrey3,size: 20,),
                    SizedBox(width: 10,),
                    Text("Delivery time",style:TextStyle(color: CupertinoColors.systemGrey3,fontSize:15),),
                    Spacer(),
                    Text("${DateTime.now()}",style:TextStyle(color: CupertinoColors.systemGrey3,fontSize:15),),
                  ],),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(height: 220,
                           child: CupertinoDatePicker(
                           onDateTimeChanged: (value) {},
                           mode: CupertinoDatePickerMode.dateAndTime,
                           initialDateTime: DateTime.now(),
                             ),
                  ),
                  ),
                Container(
                  height: cpT!.cartheight,

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
                                        image: DecorationImage(image: NetworkImage("${cpT!.cartlist[index].image}"),fit: BoxFit.fill)
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${cpT!.cartlist[index].name}", style: TextStyle(fontSize: 25, color: CupertinoColors.black),),
                                      Text("${cpT!.cartlist[index].price}", style: TextStyle(fontSize: 25, color: CupertinoColors.systemGrey2),),
                                    ],),
                                  Spacer(),
                                  Text("\$ ${cpT!.cartlist[index].price}"),


                                ],
                              ),
                              Divider(color: CupertinoColors.extraLightBackgroundGray,thickness: 2,height: 1,endIndent: 10,indent: 65),
                            ],
                          ),
                        );
                      },
                      itemCount: cpT!.cartlist.length),
                ),
                Container(height: 150,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Shipping \$ 21.00"),
                    Text("Tax \$ 10.32"),
                    Text("Total \$ ${cpT!.totalcart}")
                  ],
                ),)
              


              ],
    ),
        ));
  }

  Padding TabsFields({TextEditingController? controller,IconData? icon,}) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
        child: CupertinoTextField(
          prefix: Icon(icon,color: CupertinoColors.systemGrey3,size: 20,),
          style: TextStyle(color: CupertinoColors.systemGrey3,fontSize: 15),
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: CupertinoColors.systemGrey3))),

        ),
      );
  }
}
