import 'package:flutter/cupertino.dart';

class GooglePlayProvider extends ChangeNotifier
{
  int bottombarindex = 0;
  void bottombaroption(int index)
  {
    bottombarindex = index;
    notifyListeners();
  }

}