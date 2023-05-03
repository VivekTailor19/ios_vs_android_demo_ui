import 'package:flutter/widgets.dart';
import 'package:ios_vs_android_demo_ui/cupertino_shopping/shopping_view/shopping_cart.dart';
import 'package:ios_vs_android_demo_ui/cupertino_shopping/shopping_view/shopping_products.dart';
import 'package:ios_vs_android_demo_ui/cupertino_shopping/shopping_view/shopping_search.dart';

class CupertinoProvider extends ChangeNotifier
{
  List<Widget> screens = [
    Cupertino_Products(),
    Cupertino_Search(),
    Cupertino_Cart(),
  ];
}