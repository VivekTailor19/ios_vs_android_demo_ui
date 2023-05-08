
import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/android_setting.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/ios_setting.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/setting_provioder.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


import 'android_home/android_home.dart';
import 'android_home/google_play_store_ui/provider/google_play_provider.dart';
import 'android_home/google_play_store_ui/app_view.dart';
import 'android_home/google_play_store_ui/screens/homescreen/first_screen.dart';
import 'android_home/stepper_app/provider/stloginprovider.dart';
import 'android_home/stepper_app/provider/stregisterprovider.dart';
import 'android_home/stepper_app/screens/stepper_home.dart';
import 'android_home/stepper_app/screens/stepper_login.dart';
import 'android_home/stepper_app/screens/stepper_register.dart';
import 'android_home/stepper_app/splash/stepper_splash.dart';
import 'ios_home/app_store/provider/appstore_provider.dart';
import 'ios_home/app_store/view/appstore_home.dart';
import 'ios_home/cupertino_shopping/shopping_provider/shopping_provider.dart';
import 'ios_home/cupertino_shopping/shopping_view/shopping_home.dart';
import 'ios_home/ios_home.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //systemNavigationBarColor: Colors.red,
    statusBarColor: Colors.white,));

  runApp(

      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SettingProvider(),),
          ChangeNotifierProvider(create: (context) => GooglePlayProvider(),),
          ChangeNotifierProvider(create: (context) => CupertinoProvider(),),
          ChangeNotifierProvider(create: (context) => AppStoreProvider(),),
          ChangeNotifierProvider(create: (context) => LoginProvider(),),
          ChangeNotifierProvider(create: (context) => RegisterProvider(),),
        ],

        child:
         Platform.isIOS != true ?

        MaterialApp(
          debugShowCheckedModeBanner: false,
          //initialRoute: "splashstepper",
          routes: {
              "/":(context) =>  Android_Home(),
              "android_setting":(context) => Android_Settings(),
              "googleplay":(context) => First_Screen(),
              "appview":(context) => App_View_Android(),
              "splashstepper":(context) => Splash_Stepper(),
              "stepperhome":(context) => Stepper_Home(),
              "stlogin":(context) => Stepper_Login(),
              "stregister":(context) => Stepper_Registration(),

            },
        )
        :

        CupertinoApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: "cupertinostore",
          routes: {
            "/":(context) => iOS_Home(),
            "home":(context) => const iOS_Home(),
            "ios_setting": (context) => iOS_Setting_UI(),
            "cupertinostore":(context) => Cupertino_Store(),
            "appstore":(context) => App_Store_HomeScreen(),


          },
        ),

      ),




  );

}

/*
Application
-Name,Images,logo,rating,


* */

/*

DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => SettingProvider(),),
        ],
        child: MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          initialRoute: "android_setting",

          routes: {

            "ios_setting": (context) => iOS_Setting_UI(),
            "android_setting":(context) => Android_Settings()


          },
        ),
      ), // Wrap your app
    ),


* */