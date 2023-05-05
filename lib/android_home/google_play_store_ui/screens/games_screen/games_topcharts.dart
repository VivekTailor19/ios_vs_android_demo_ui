import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Games_Topcharts extends StatefulWidget {
  const Games_Topcharts({Key? key}) : super(key: key);

  @override
  State<Games_Topcharts> createState() => _Games_TopchartsState();
}

class _Games_TopchartsState extends State<Games_Topcharts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Show installed apps"),
                Switch(onChanged: (value) {

                },
                    value: false)
              ],
            ),

          ],
        ),

      ),
    );
  }
}
