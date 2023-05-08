import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/stloginprovider.dart';

class Stepper_Login extends StatefulWidget {
  const Stepper_Login({Key? key}) : super(key: key);

  @override
  State<Stepper_Login> createState() => _Stepper_LoginState();
}

class _Stepper_LoginState extends State<Stepper_Login> {
  LoginProvider? vsT;
  LoginProvider? vsF;

  @override
  Widget build(BuildContext context) {
    vsT = Provider.of<LoginProvider>(context, listen: true);
    vsF = Provider.of<LoginProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper App"),
         // backgroundColor: Colors.blue,
        ),
        body: Stepper(

          currentStep: vsT!.currentstep,
          onStepCancel: () {
            vsF!.stepcancel();
          },
          onStepContinue: () {
            vsF!.stepcontinue();
          },
          steps: [
            Step(
              isActive: true,
                title: Text("SignUp"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_2),
                          hintText: "Full Name"),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "Email-Id"),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          hintText: "Password"),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outlined),
                          hintText: "Confirm Password"),
                    ),
                  ],
                )),
            Step(
              isActive: true,
                title: Text("Login"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "User Name"),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outlined),
                          hintText: "Password"),
                    ),

                  ],
                )),
            Step(

                title: Text("Home"),
                content: Text(""),
                isActive: true,
                state: StepState.complete),
          ],
          type: StepperType.vertical,
          elevation: 0,
        ),
      ),
    );
  }
}
