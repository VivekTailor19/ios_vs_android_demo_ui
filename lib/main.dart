
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ios_vs_android_demo_ui/app_store/provider/appstore_provider.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/provider/google_play_provider.dart';
import 'package:ios_vs_android_demo_ui/google_play_store_ui/screens/homescreen/first_screen.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/android_setting.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/ios_setting.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/setting_provioder.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'app_store/view/appstore_home.dart';
import 'cupertino_shopping/shopping_provider/shopping_provider.dart';
import 'cupertino_shopping/shopping_view/shopping_home.dart';
import 'google_play_store_ui/screens/app_view.dart';
import 'ios_home/ios_home.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //systemNavigationBarColor: Colors.red,
    statusBarColor: Colors.white,));

  runApp(

      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => Sizer(
          builder: (context, orientation, deviceType) {
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (context) => SettingProvider(),),
                ChangeNotifierProvider(create: (context) => GooglePlayProvider(),),
                ChangeNotifierProvider(create: (context) => CupertinoProvider(),),
                ChangeNotifierProvider(create: (context) => AppStoreProvider(),),

              ],

              child:
              // Platform.isAndroid != true ?

              // MaterialApp(
              //   debugShowCheckedModeBanner: false,
              //   initialRoute: "googleplay",
              //   routes: {
              //       "ios_setting": (context) => iOS_Setting_UI(),
              //       "android_setting":(context) => Android_Settings(),
              //       "googleplay":(context) => First_Screen(),
              //       "appview":(context) => App_View_Android(),
              //     },
              // )
              //:

              CupertinoApp(
                debugShowCheckedModeBanner: false,
                // initialRoute: "cupertinostore",
                routes: {
                  "/":(context) => iOS_Home(),
                  "home":(context) => iOS_Home(),
                  "ios_setting": (context) => iOS_Setting_UI(),
                  "cupertinostore":(context) => Cupertino_Store(),
                  "appstore":(context) => App_Store_HomeScreen(),


                },
              ),

            );
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