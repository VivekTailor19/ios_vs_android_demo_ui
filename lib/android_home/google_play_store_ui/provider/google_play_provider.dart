import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/application_model.dart';
import '../model/optionselectmodel.dart';

class GooglePlayProvider extends ChangeNotifier {
  int bottombarindex = 0;

  void bottombaroption(int index) {
    bottombarindex = index;
    notifyListeners();
  }

  List<ApplicationModel> googleitems = [
    ApplicationModel(
        apprating: 4.2, appname: "Google Photos",
        appimage: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Google_Photos_icon_%282020%29.svg/1024px-Google_Photos_icon_%282020%29.svg.png",
        imgpack: [
          "https://play-lh.googleusercontent.com/txZg8DG_fuYDdhiH0haLYd6zHpokFpzXP9gb_3ljVHI8VeVzCkMy-YFZ9-fxXM_cHuwl=w526-h296-rw",
          "https://play-lh.googleusercontent.com/-dmhCalMOHT7z0RyDFaMuSUy3C6dSoWQfJuyvgJiu0m6hCKhoP-iSm7o7Hrfcyucm2E=w526-h296-rw",
          "https://play-lh.googleusercontent.com/e-gWDZ1-xoHHQyxH8jomZQdPAqVH2xKJ4s7PzF_CYsFwPEe3w9HYMXvUfquZN2Xkuag=w526-h296-rw",
          "https://play-lh.googleusercontent.com/5JA5vfrJMmQ81iCQX5uuETAKU2-0pdI1kBkHbnTXVHYTRzUntq60LkQ9rr1HUnQdNP4=w526-h296-rw",
          "https://play-lh.googleusercontent.com/-kgHl1qk6YBqCDeSoAsUiz8q72bhKClui-GUV82Ks72eIkHBmwWeEWAncI9aw_lKNewB=w526-h296-rw",
          "https://play-lh.googleusercontent.com/Quqjt3B952f04m3PtdZLZq3BjWBhuOSMWkfKAiUEJ93AzhdUXC8UhRVlspHTnwGytg=w526-h296-rw"

        ]
    ),
    ApplicationModel(apprating: 4, appname: "Google Lens",appimage: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Google_Lens_-_new_logo.png/768px-Google_Lens_-_new_logo.png"),

    ApplicationModel(apprating: 4.9,appname: "Google Maps",appimage: "https://play-lh.googleusercontent.com/Kf8WTct65hFJxBUDm5E-EpYsiDoLQiGGbnuyP6HBNax43YShXti9THPon1YKB6zPYpA=w240-h480-rw",
    imgpack: [
      "https://play-lh.googleusercontent.com/PJkiXQiABQxpVdHMpvOux53wP2TVuYg0fq9K5JYYDO336nvbX-0ShhHWzZGnagmWlw=w2560-h1440-rw",
      "https://play-lh.googleusercontent.com/GxNGfSXkAxOEvgOXPKNLp373_MqNS9rPVYlCi-1JekFD3N3JdT3g3d4z_5dxWaFvtKg=w2560-h1440-rw",
      "https://play-lh.googleusercontent.com/FK7X8M1BCF0Ji6-TkHaww2qP8FEdIrvofW6qDRMCNjszqq5XiVmGNCV00KXSSuETMS8=w2560-h1440-rw",
      "https://play-lh.googleusercontent.com/6K2sbPKNLgAKWrEUFDLkoumlAoeCH491rS7b_yEWdxwEXgLslsXg64Uq7UC-_n9u0eo=w2560-h1440-rw"

    ],),
    ApplicationModel(apprating: 4.8,appname: "Google Fit",appimage: "https://play-lh.googleusercontent.com/jArSD-kxOa2llPXvqrjRcEJdL4XhjP8-WqEfg9UAlYF8v0qzXAZ0EI5k96l0pf3tDNg=w240-h480-rw"),
    ApplicationModel(apprating: 5.0,appname: "Snapseed",appimage: "https://play-lh.googleusercontent.com/Rilq4obCk7XIl2Pjb8XT-Ydh_aI3hBNeFwro9fFXrIAuC-zPxCZ4feE4rx5fZ3jHNLw=w240-h480-rw"),
    ApplicationModel(apprating: 4.2,appname: "Google Search",appimage: "https://blog.hubspot.com/hubfs/image8-2.jpg"),
    ApplicationModel(apprating: 4.8,appname: "Google Classroom",appimage: "https://upload.wikimedia.org/wikipedia/commons/5/59/Google_Classroom_Logo.png"),
    ApplicationModel(apprating: 3.9,appname: "Gmail",appimage: "https://play-lh.googleusercontent.com/KSuaRLiI_FlDP8cM4MzJ23ml3og5Hxb9AapaGTMZ2GgR103mvJ3AAnoOFz1yheeQBBI=w240-h480-rw"),
    ApplicationModel(apprating: 4.5, appname: "Google Drive",appimage: "https://play-lh.googleusercontent.com/t-juVwXA8lDAk8uQ2L6d6K83jpgQoqmK1icB_l9yvhIAQ2QT_1XbRwg5IpY08906qEw=w240-h480-rw"),
    ApplicationModel(apprating: 5.0,appname: "Calender",appimage: "https://cdn-icons-png.flaticon.com/512/5968/5968499.png"),
    ApplicationModel(apprating: 4.1,appname: "Meet",appimage: "https://play-lh.googleusercontent.com/6wvcwcC_v4bBwA7K1eDoKw_PDtvdpHwhKAisZftnoY_Jn94Rjh7u7YSV0IEn9uZM2A=w240-h480-rw"),
    ApplicationModel(apprating: 4.0,appname: "Google Pay",appimage: "https://play-lh.googleusercontent.com/HArtbyi53u0jnqhnnxkQnMx9dHOERNcprZyKnInd2nrfM7Wd9ivMNTiz7IJP6-mSpwk=w240-h480-rw")


  ];



  int imgpacklength = 0;

  void totalphoto(int index)
  {
    imgpacklength = 0;
    imgpacklength = googleitems[index].imgpack!.length ;
    notifyListeners();
  }


  bool isInstalled = false;
  void checkinstall(bool input)
  {
    isInstalled = input;
    notifyListeners();
  }


  Color tcolor = Colors.teal;
  Color bgcolor = Colors.white;

  bool isfree = true;
  bool isgrossing = false;
  bool istrending = false;
  bool ispurchase = false;

  Color selected = Colors.teal;
  Color sbg = Colors.teal.shade100;
  Color unselected = Colors.black54;
  Color ubg = Colors.white;

  void optionitem(int index)
  {
    if(index == 0)
      {

      }

  }

  List<OptionSelect> optionlist = [
    OptionSelect(option:"Top Free" ,torf: true,),
    OptionSelect(option:"Top Grossing" ,torf: false),
    OptionSelect(option:"Top Trending" ,torf: false),
    OptionSelect(option:"Top Purchasing" ,torf: false),
  ];

  void optionfree()
  {
    tcolor = selected;
    bgcolor = sbg;
    notifyListeners();
  }



}
