import 'package:flutter/cupertino.dart';

class Cupertino_Products extends StatefulWidget {
  const Cupertino_Products({Key? key}) : super(key: key);

  @override
  State<Cupertino_Products> createState() => _Cupertino_ProductsState();
}

class _Cupertino_ProductsState extends State<Cupertino_Products> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Text("Cupertino Store",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
        child: Column(
          children: [
            CupertinoListTile(title: Text("Vagabond sack",style: TextStyle(fontSize: 25,color: CupertinoColors.black),),leading: Icon(CupertinoIcons.ant,),subtitle: Text("120",style: TextStyle(color: CupertinoColors.black),),trailing: Icon(CupertinoIcons.add_circled),),
          ],
        )


        );
  }
}
