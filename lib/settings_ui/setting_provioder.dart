import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier
{
  bool lockapp = false;
  bool usefinger = false;
  bool changepassword = false;

  void lockappfun(bool value)
  {
    lockapp = value;
    notifyListeners();
  }



}