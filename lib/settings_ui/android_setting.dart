import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/setting_provioder.dart';
import 'package:provider/provider.dart';


class Android_Settings extends StatefulWidget {
  const Android_Settings({Key? key}) : super(key: key);

  @override
  State<Android_Settings> createState() => _Android_SettingsState();
}

class _Android_SettingsState extends State<Android_Settings> {


  SettingProvider? spF;
  SettingProvider? spT;


  @override
  Widget build(BuildContext context) {
    spF = Provider.of(context, listen: false);
    spT = Provider.of(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          systemOverlayStyle: SystemUiOverlayStyle(systemNavigationBarColor: Colors.amber),
          backgroundColor: Color(0xffFF4500),
            title: Text("Settings UI"),
            elevation: 0,
          ),
        body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              TitleTab("Common"),
              CommanTile(icon: Icons.language_rounded,
                  title: "Language",
                  osubtitle: "English"),
              Divider(thickness: 0.5, color: Colors.black12),
              CommanTile(icon: Icons.wb_cloudy_outlined,
                  title: "Environment",
                  osubtitle: "Production"),
              //
              TitleTab("Account"),
              AccountTile(icon: Icons.call,title: "Phone number"),
              Divider(thickness: 0.5, color: Colors.black12),
              AccountTile(icon: Icons.mail,title: "Email"),
              Divider(thickness: 0.5, color: Colors.black12),
              AccountTile(icon: Icons.input_rounded,title: "Sign out"),

              TitleTab("Security"),
              SecurityTile(title: "Lock app in background", icon:Icons.phonelink_lock, swit:spT!.lockapp, onchangemethod:spF!.lockappfun),
              SecurityTile(icon: Icons.fingerprint_rounded,title:"Use fingerprint",swit: spT!.usefinger,onchangemethod: spF!.usefingerfun),
              SecurityTile(icon: Icons.lock,title:"Change Password",swit: spT!.changepassword,onchangemethod: spF!.changepasswordfun),

              TitleTab("Misc"),
      ],
    ),)
    ,
    );
  }

  
  Widget TitleTab(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
      child: Text(
        "$title",
        style: TextStyle(color: Color(0xffFF4500), fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget CommanTile(
      {String? title, String? osubtitle, IconData? icon}) {
    return ListTile(
      leading: Icon(icon, size: 20, color: Colors.black45,),
      title: Text("$title"),
      subtitle: Text('$osubtitle'),
    );
  }

  Widget AccountTile({String? title, IconData? icon})
  {
    return ListTile(title: Text("$title"),
      leading: Icon(icon, size: 20, color: Colors.black45,),);
  }


  Widget SecurityTile(
      {String? title, IconData? icon, bool? swit, Function? onchangemethod}) {
    return ListTile(
      leading: Icon(icon, size: 20, color: Colors.black45,),
      title: Text("$title"),
      trailing: Switch(
        activeTrackColor: Colors.deepOrange.shade200,
        activeColor: Colors.red,
        value: swit!,
        onChanged: (value) {
          onchangemethod!(value);
        },
      ),
    );
  }


}
