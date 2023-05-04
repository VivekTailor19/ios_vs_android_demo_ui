import 'package:flutter/cupertino.dart';

import '../model/appstoreapps.dart';
import '../model/appstoregames.dart';

class AppStoreProvider extends ChangeNotifier
{
  List<String> todayposts = [
    "assets/images/appstore/today/today1.jpg",
    "assets/images/appstore/today/today2.jpg",
    "assets/images/appstore/today/today3.jpg",
    "assets/images/appstore/today/today4.jpg",
    "assets/images/appstore/today/today5.jpg",
  ];

  List<AppStoreGamesModel> newgamelist = [

    AppStoreGamesModel(gamename: "Subway Surfers",gametag: "SYBO Games",gameimage: "https://play-lh.googleusercontent.com/vMabDu3a3PZs4G9dT3o6RzJ74OBaCIN1XHNWVM1H--v0ASqY4uMhzMmB2JqmBi9NOg=w2560-h1440-rw"),
    AppStoreGamesModel(gamename: "Need for Speed™ No Limits",gametag: "ELECTRONIC ARTS",gameimage: "https://play-lh.googleusercontent.com/aKXKOVc6-ejZoXMcraRjPBxkreHKI_f95Y6j-JARGhj-j2qs6ma6l_g2WWKjsrCQDmc=w526-h296-rw"),
    AppStoreGamesModel(gamename: "Viking Rise",gametag: "IGG.COM",gameimage: "https://play-lh.googleusercontent.com/DjhekCgGqJP3ujz9COoB2kuEhmTjU8xKIiuy50ZXsZTXs7Q5mwS0fLYMI9qQ4sQlTWo=w2560-h1440-rw"),
    AppStoreGamesModel(gamename: "Shadow Knight: Ninja Assassin",gametag: "Fansipan Limited",gameimage: "https://play-lh.googleusercontent.com/8MNiYFOHbJIa-ljdB5L3613BhlXGydUBknXSSITDgg3ZKrUqKQRfrR59HudR7fmLK68=w2560-h1440-rw"),
    AppStoreGamesModel(gamename: "Subway Surfers",gametag: "SYBO Games",gameimage: "https://play-lh.googleusercontent.com/vMabDu3a3PZs4G9dT3o6RzJ74OBaCIN1XHNWVM1H--v0ASqY4uMhzMmB2JqmBi9NOg=w2560-h1440-rw"),
    AppStoreGamesModel(gamename: "Need for Speed™ No Limits",gametag: "ELECTRONIC ARTS",gameimage: "https://play-lh.googleusercontent.com/aKXKOVc6-ejZoXMcraRjPBxkreHKI_f95Y6j-JARGhj-j2qs6ma6l_g2WWKjsrCQDmc=w526-h296-rw"),
    AppStoreGamesModel(gamename: "Viking Rise",gametag: "IGG.COM",gameimage: "https://play-lh.googleusercontent.com/DjhekCgGqJP3ujz9COoB2kuEhmTjU8xKIiuy50ZXsZTXs7Q5mwS0fLYMI9qQ4sQlTWo=w2560-h1440-rw"),
    AppStoreGamesModel(gamename: "Shadow Knight: Ninja Assassin",gametag: "Fansipan Limited",gameimage: "https://play-lh.googleusercontent.com/8MNiYFOHbJIa-ljdB5L3613BhlXGydUBknXSSITDgg3ZKrUqKQRfrR59HudR7fmLK68=w2560-h1440-rw"),

  ];

  List<AppStoreAppsModel> newapplist = [

    AppStoreAppsModel(appname: "Spotify: Music and Podcasts",apptag: "Spotify AB",appimage: "https://play-lh.googleusercontent.com/NprNODm-Yec2lWn1HKR5SC_e4lpp5M08wi5SifTJYG9BbJvtlAZC2DE79jRQkYEieTQ=w2560-h1440-rw"),
    AppStoreAppsModel(appname: "Instagram",apptag: "Instagram",appimage: "https://play-lh.googleusercontent.com/1OU9wkU98c1Q03_j2Cgon6w_D-dAWDGEvhwO-v_jQuJVcuIcQRgV9sHoL639mK-qNGU=w2560-h1440-rw"),
    AppStoreAppsModel(appname: "TouchRetouch",apptag: "ADVA Soft",appimage: "https://play-lh.googleusercontent.com/fVzzIBikTLigYmaEnB0IPdMuANexM3lZGiUgvj_iX335Zs55_OxcMY37_2yFkGLikQ=w526-h296-rw"),
    AppStoreAppsModel(appname: "MX Player",apptag: "MX Media (formerly J2 Interactive)",appimage: "https://play-lh.googleusercontent.com/2RKQvFAdr7QUp1FnSJ6N7YwDSau2uADF98sPygJqe7MW7B8ay-ZGx1ijX85BPVP2=w526-h296-rw"),


  ];
}