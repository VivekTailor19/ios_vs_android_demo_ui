import 'package:flutter/widgets.dart';


import '../shopping_model/shopping_model.dart';
import '../shopping_view/shopping_cart.dart';
import '../shopping_view/shopping_products.dart';
import '../shopping_view/shopping_search.dart';

class CupertinoProvider extends ChangeNotifier
{
  List<Widget> screens = [
    Cupertino_Products(),
    Cupertino_Search(),
    Cupertino_Cart(),
  ];

  List<CupertinoModel> productlist = [
    CupertinoModel(qty:1,name: "Vagabond sack",price: 120,image: "https://www.jiomart.com/images/product/420x420/rvacnowjk1/de-vagabond-blue-polyester-backpack-16-l-product-images-orvacnowjk1-p590945412-1-202112102104.jpg"),
    CupertinoModel(qty:1,name: "Stella sunglasses",price: 58,image: "https://www.jiomart.com/images/product/600x750/rvnc4gkg95/elegante-uv-protected-oval-brown-sunglasses-for-women-product-images-rvnc4gkg95-0-202207281021.jpg"),
    CupertinoModel(qty:1,name: "Whitney belt",price: 35,image: "https://www.jiomart.com/images/product/600x750/rvesqzu57a/kastner-men-s-best-artificial-leather-belt-product-images-rvesqzu57a-0-202212210045.jpg"),
    CupertinoModel(qty:1,name: "Garden strand",price: 98,image: "https://m.media-amazon.com/images/I/71Oob0oC6vL._SX355_.jpg"),
    CupertinoModel(qty:1,name: "Strut earrings",price: 34,image: "https://m.media-amazon.com/images/I/416V9wS5O4L.jpg"),
    CupertinoModel(qty:1,name: "Varsity socks",price: 12,image: "https://m.media-amazon.com/images/I/81FWMgzIZ-L._UX385_.jpg"),
    CupertinoModel(qty:1,name: "Weave keyring",price: 16,image: "https://m.media-amazon.com/images/I/61nvSuEYZpL._SY355_.jpg"),
    CupertinoModel(qty:1,name: "Bag",price: 150,image: "https://m.media-amazon.com/images/I/71KbAZp-kkL._UX522_.jpg"),
    CupertinoModel(qty:1,name: "String Lights",price: 20,image: "https://m.media-amazon.com/images/I/51QDij5B6KL._SX300_SY300_QL70_FMwebp_.jpg")

  ];

  List<CupertinoModel> cartlist = [];

  double cartheight = 75;
  double totalcart = 0;


  void addcart(int index)
  {
    double subtotal = 0;
    cartheight = (cartlist.length +1 ) * 75;
    CupertinoModel temp = productlist[index];
    cartlist.add(temp);
    cartheight = (cartlist.length +1 ) * 75;
    for(int i = 0 ; i< cartlist.length; i++)
    {
      subtotal = subtotal + cartlist[i].price! ;
    }
    totalcart = subtotal + 31.32 ;

    notifyListeners();
  }



  //DateTime ddate = DateTime.now();
  DateTime sdate = DateTime.now();

  void datechange(DateTime temp)
  {
    sdate = temp;
    notifyListeners();

  }




}