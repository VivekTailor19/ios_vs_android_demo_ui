import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_vs_android_demo_ui/stepper_app/vstepper_provider.dart';
import 'package:provider/provider.dart';

class Vertical_Stepper extends StatefulWidget {
  const Vertical_Stepper({Key? key}) : super(key: key);

  @override
  State<Vertical_Stepper> createState() => _Vertical_StepperState();
}

class _Vertical_StepperState extends State<Vertical_Stepper> {
  VStepper? vsT;
  VStepper? vsF;

  @override
  Widget build(BuildContext context) {
    vsT = Provider.of<VStepper>(context, listen: true);
    vsF = Provider.of<VStepper>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stepper App"),
          backgroundColor: Colors.red,
        ),
        body: Stepper(
          controlsBuilder: (context, details) {

          },

          currentStep: vsT!.currentstep,
          onStepCancel: () {
            vsF!.stepcancel();
          },
          onStepContinue: () {
            vsF!.stepcontinue();
          },
          steps: [
            Step(
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
