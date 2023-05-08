import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stepper_Home extends StatefulWidget {
  const Stepper_Home({Key? key}) : super(key: key);

  @override
  State<Stepper_Home> createState() => _Stepper_HomeState();
}

class _Stepper_HomeState extends State<Stepper_Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, "stlogin");
            }, child: Text("Login Page")),

              ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, "stregister");
            }, child: Text("Registration")),

          ],),
        ),
      ),
    );
  }
}
