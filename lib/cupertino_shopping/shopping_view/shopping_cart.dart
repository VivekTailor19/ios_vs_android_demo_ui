import 'package:flutter/cupertino.dart';

class Cupertino_Cart extends StatefulWidget {
  const Cupertino_Cart({Key? key}) : super(key: key);

  @override
  State<Cupertino_Cart> createState() => _Cupertino_CartState();
}

class _Cupertino_CartState extends State<Cupertino_Cart> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Center(child: Text("Cart")));
  }
}
