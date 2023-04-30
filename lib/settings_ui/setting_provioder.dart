import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier
{
  bool lockapp = false ;
  bool usefinger = false;
  bool changepassword = false;

  void lockappfun(bool value)
  {
    lockapp = value;
    notifyListeners();
  }
  void usefingerfun(bool value)
  {
    usefinger = value;
    notifyListeners();
  }
  void changepasswordfun(bool newvalue)
  {
    changepassword = newvalue;
    notifyListeners();
  }



}



