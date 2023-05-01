import 'package:flutter/material.dart';

class App_View_Android extends StatefulWidget {
  const App_View_Android({Key? key}) : super(key: key);

  @override
  State<App_View_Android> createState() => _App_View_AndroidState();
}

class _App_View_AndroidState extends State<App_View_Android> {
  @override
  Widget build(BuildContext context) {

   // int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_rounded,color: Colors.black54,),
          actions: [
            Icon(Icons.search,color: Colors.black54,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.more_vert_rounded,color: Colors.black54,),
            )
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 0.4),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage("https://img.freepik.com/premium-vector/google-drive-logo_578229-303.jpg?w=2000"),
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
                        Text("Google Drive",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Text("Google LLC",style: TextStyle(color: Colors.teal,fontSize: 15,fontWeight: FontWeight.bold),),
                        Text("Contains ads - In-app purchases",style: TextStyle(color: Colors.black38,fontSize: 11,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
