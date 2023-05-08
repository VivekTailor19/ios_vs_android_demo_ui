import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_Stepper extends StatefulWidget {
  const Splash_Stepper({Key? key}) : super(key: key);

  @override
  State<Splash_Stepper> createState() => _Splash_StepperState();
}

class _Splash_StepperState extends State<Splash_Stepper> {



  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3,),() {
      Navigator.pushNamed(context, "stepperhome");
    },);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FlutterLogo(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(seconds: 3),
            size: 250,
            style: FlutterLogoStyle.stacked,
          ),
        ),
      ),
    );
  }
}
