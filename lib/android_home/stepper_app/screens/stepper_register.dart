

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/stregisterprovider.dart';

class Stepper_Registration extends StatefulWidget {
  const Stepper_Registration({Key? key}) : super(key: key);

  @override
  State<Stepper_Registration> createState() => _Stepper_RegistrationState();
}

class _Stepper_RegistrationState extends State<Stepper_Registration> {

  RegisterProvider? rpT;
  RegisterProvider? rpF;

  @override
  Widget build(BuildContext context) {

    rpT = Provider.of<RegisterProvider>(context,listen: true);
    rpF = Provider.of<RegisterProvider>(context,listen: false);
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Edit Your Profile"),),
        body: Stepper(
          elevation: 0,
          type: StepperType.vertical,


          currentStep: rpT!.currentstep,
          onStepContinue: () => rpF!.stepcontinue(),
          onStepCancel: () => rpF!.stepcancel(),
          steps: [
            Step(title: Text("Profile Picture"),isActive: true, content: Image.asset("assets/images/appstore/today/today1.jpg",height: 150,width: 150,)),
            Step(
                isActive: true,
                title: Text("Name"),
                content: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                      prefixIcon: Icon(Icons.person_2),
                      hintText: "Enter Full Name"),
                )),
            Step(
              title: Text("Phone"),
              content: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Enter Phone Number"),
            ),isActive: true,),
            Step(title: Text("Email"),content: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Enter Proper Email Id"),
            ),isActive: true,),
            Step(title: Text("DOB"),content: Text(""),isActive: true,),
            Step(title: Text("Gender"),content: Text(""),isActive: true,),
            Step(title: Text("Current Location"),content: Text(""),isActive: true,),
            Step(title: Text("Nationalities"),content: Text(""),isActive: true,),
            Step(title: Text("Religion"),content: Text(""),isActive: true,),
            Step(title: Text("Languages"),content: Text(""),isActive: true,),
            Step(title: Text("Biography"),content: Text(""),isActive: true,),
          ],

        ),

      ),
    );
  }
}
