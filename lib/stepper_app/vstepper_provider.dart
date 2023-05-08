import 'package:flutter/material.dart';

class VStepper extends ChangeNotifier
{
  int currentstep = 0;

  void stepcontinue()
  {
    if(currentstep<2)
    {
      currentstep++;
    }
    notifyListeners();
  }

  void stepcancel()
  {
    if(currentstep>0)
    {
      currentstep--;
    }
    notifyListeners();
  }

}