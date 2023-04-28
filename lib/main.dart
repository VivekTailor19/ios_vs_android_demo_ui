import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/android_setting.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/ios_setting.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/setting_provioder.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
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

  );
}
