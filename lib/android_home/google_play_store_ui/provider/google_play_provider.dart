import 'package:flutter/cupertino.dart';

import '../model/application_model.dart';

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

    ApplicationModel(apprating: 4.9,appname: "Google Maps",appimage: "https://static.wikia.nocookie.net/google/images/1/19/Google_Maps_Icon.png/revision/latest?cb=20201022161440",
    imgpack: [
      "https://play-lh.googleusercontent.com/PJkiXQiABQxpVdHMpvOux53wP2TVuYg0fq9K5JYYDO336nvbX-0ShhHWzZGnagmWlw=w2560-h1440-rw",
      "https://play-lh.googleusercontent.com/GxNGfSXkAxOEvgOXPKNLp373_MqNS9rPVYlCi-1JekFD3N3JdT3g3d4z_5dxWaFvtKg=w2560-h1440-rw",
      "https://play-lh.googleusercontent.com/FK7X8M1BCF0Ji6-TkHaww2qP8FEdIrvofW6qDRMCNjszqq5XiVmGNCV00KXSSuETMS8=w2560-h1440-rw",
      "https://play-lh.googleusercontent.com/6K2sbPKNLgAKWrEUFDLkoumlAoeCH491rS7b_yEWdxwEXgLslsXg64Uq7UC-_n9u0eo=w2560-h1440-rw"

    ],),
    ApplicationModel(apprating: 4.8,appname: "Google Fit",appimage: "https://cdn1.iconfinder.com/data/icons/logos-brands-in-colors/236/Google_Fit_icon_2018-512.png"),
    ApplicationModel(apprating: 5.0,appname: "Google PlayStore",appimage: "https://img.etimg.com/thumb/width-640,height-480,imgsize-7588,resizemode-1,msid-94856434/magazines/panache/google-to-offer-more-visibility-to-apps-on-play-store-tech-giant-working-on-listing-layout/google-play.jpg"),
    ApplicationModel(apprating: 4.2,appname: "Google Search",appimage: "https://blog.hubspot.com/hubfs/image8-2.jpg"),
    ApplicationModel(apprating: 4.8,appname: "Google Classroom",appimage: "https://upload.wikimedia.org/wikipedia/commons/5/59/Google_Classroom_Logo.png"),
    ApplicationModel(apprating: 3.9,appname: "Gmail",appimage: "https://play-lh.googleusercontent.com/KSuaRLiI_FlDP8cM4MzJ23ml3og5Hxb9AapaGTMZ2GgR103mvJ3AAnoOFz1yheeQBBI=w240-h480-rw"),
    ApplicationModel(apprating: 4.5, appname: "Google Drive",appimage: "https://img.freepik.com/premium-vector/google-drive-logo_578229-303.jpg?w=2000"),
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
}
