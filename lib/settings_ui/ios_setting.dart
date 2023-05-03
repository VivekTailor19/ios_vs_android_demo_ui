import 'package:flutter/cupertino.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/setting_provioder.dart';
import 'package:provider/provider.dart';


class iOS_Setting_UI extends StatefulWidget {
  const iOS_Setting_UI({Key? key}) : super(key: key);

  @override
  State<iOS_Setting_UI> createState() => _iOS_Setting_UIState();
}

class _iOS_Setting_UIState extends State<iOS_Setting_UI> {

  CupertinoThemeData cupertheme = CupertinoThemeData(
    primaryColor: CupertinoColors.separator,

  );
  SettingProvider? spF;
  SettingProvider? spT;


  @override
  Widget build(BuildContext context) {

    spF = Provider.of<SettingProvider>(context, listen: false);
    spT = Provider.of<SettingProvider>(context, listen: true);

    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.back,color: CupertinoColors.white,),
        backgroundColor: CupertinoColors.systemRed,
        middle: Text("Settings UI",style: TextStyle(color: CupertinoColors.white),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Titletext("Common"),
          CommonTile(title: "Language",icon: CupertinoIcons.globe,additional: "English"),
          CommonTile(title: "Environment",icon: CupertinoIcons.cloud_fill,additional: "Production"),

          Titletext("Account"),
          AccountTile(title: "Phone number",icon: CupertinoIcons.phone_fill ),
          AccountTile(title: "Email",icon: CupertinoIcons.mail_solid ),
          AccountTile(title: "Sign out",icon: CupertinoIcons.arrow_right_square ),


          Titletext("Security"),
          SecurityTile(title: "Lock app in background",icon: CupertinoIcons.lock,swit:spT!.lockapp, onchangemethod:spF!.lockappfun),
          SecurityTile(title:"Use fingerprint",icon: CupertinoIcons.hand_thumbsdown_fill,swit: spT!.usefinger,onchangemethod: spF!.usefingerfun),
          SecurityTile(title:"Change Password",icon: CupertinoIcons.lock,swit: spT!.changepassword,onchangemethod: spF!.changepasswordfun),


          Titletext("Misc"),
          MiscTile(title: "Terms of Service",icon: CupertinoIcons.doc_text),
          MiscTile(title: "Open source",icon: CupertinoIcons.doc_append),




        ],
      )
    );
  }

  Widget Titletext(String title) => Padding(
    padding: const EdgeInsets.only(top: 22,left: 20,bottom: 5),
    child: Text("$title",style: TextStyle(fontSize:15,color: CupertinoColors.systemGrey, ),),
  );

  Widget CommonTile({String? title, IconData? icon, String? additional})
  {
    return CupertinoListTile(
      backgroundColor: CupertinoColors.white,
      leading: Icon(icon, size: 20, color: CupertinoColors.systemGrey,),
      title: Text("$title"),
      additionalInfo: Text("$additional",style: TextStyle(color: CupertinoColors.secondaryLabel),),
      trailing: Icon(CupertinoIcons.right_chevron,size: 20, color: CupertinoColors.secondaryLabel,),

    );
  }


  Widget AccountTile({String? title, IconData? icon})
  {
    return CupertinoListTile(
      backgroundColor: CupertinoColors.white,
      leading: Icon(icon, size: 20, color: CupertinoColors.systemGrey,),
      title: Text("$title"),
      trailing: Icon(CupertinoIcons.right_chevron,size: 20, color: CupertinoColors.secondaryLabel,),



    );
  }

  Widget SecurityTile({String? title, IconData? icon, bool? swit, Function? onchangemethod})
  {
    return CupertinoListTile(
      backgroundColor: CupertinoColors.white,
      leading: Icon(icon, size: 20, color: CupertinoColors.systemGrey,),
      title: Text("$title",),
      trailing: CupertinoSwitch(
        activeColor: CupertinoColors.systemRed,
        thumbColor: CupertinoColors.white,
        trackColor: CupertinoColors.lightBackgroundGray,
        value: swit!,
        onChanged: (value) {
          onchangemethod!(value);
        },
      ),
    );
  }

  Widget MiscTile({String? title, IconData? icon})
  {
    return CupertinoListTile(
      backgroundColor: CupertinoColors.white,
      leading: Icon(icon, size: 20, color: CupertinoColors.systemGrey,),
      title: Text("$title"),
      trailing: Icon(CupertinoIcons.right_chevron,size: 20, color: CupertinoColors.secondaryLabel,),



    );
  }

}
