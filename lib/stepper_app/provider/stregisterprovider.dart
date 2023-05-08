import 'package:flutter/foundation.dart';

class RegisterProvider extends ChangeNotifier
{
  int currentstep = 0;

  void stepcontinue()
  {
    if(currentstep<10)
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