import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_vs_android_demo_ui/settings_ui/setting_provioder.dart';
import 'package:provider/provider.dart';


class Android_Settings extends StatefulWidget {
  const Android_Settings({Key? key}) : super(key: key);

  @override
  State<Android_Settings> createState() => _Android_SettingsState();
}

class _Android_SettingsState extends State<Android_Settings> {


  SettingProvider?  spF;
  SettingProvider?  spT;




  @override
  Widget build(BuildContext context) {

    spF = Provider.of(context,listen: false);
    spT = Provider.of(context,listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFF4500),
          title: Text("Settings UI"),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleTab("Common"),
            OptionTileWithoutTrailing(icon: Icons.language_rounded,title: "Language",osubtitle: "English"),
            Divider(thickness: 0.5,color: Colors.black12),
            OptionTileWithoutTrailing(icon: Icons.wb_cloudy_outlined,title: "Environment",osubtitle: "Production"),
            TitleTab("Account"),
            ListTile(title: Text("Phone number"), leading: Icon(Icons.call,size: 20,color: Colors.black45,),),
            Divider(thickness: 0.5,color: Colors.black12),
            ListTile(title: Text("Email"), leading: Icon(Icons.mail,size: 20,color: Colors.black45,),),
            Divider(thickness: 0.5,color: Colors.black12),
            ListTile(title: Text("Sign out"), leading: Icon(Icons.input_rounded,size: 20,color: Colors.black45,),),

            TitleTab("Security"),
            OptionTileWithSlider(icon: Icons.phonelink_lock,title: "Lock app in background",temp: spF!.lockappfun(value),),


            TitleTab("Misc"),
          ],
        ),
      ),
    );
  }

  Widget TitleTab(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      child: Text(
        "$title",
        style: TextStyle(color: Color(0xffFF4500),fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget OptionTileWithoutTrailing({String? title, String? osubtitle, IconData? icon})
  {
    return ListTile(
      leading: Icon(icon,size: 20,color: Colors.black45,),
      title: Text("$title"),
      subtitle:Text('$osubtitle'),
    );
  }

  Widget OptionTileWithSlider({String? title,IconData? icon, bool? swit,Function? temp})
  {
    return ListTile(
      leading: Icon(icon,size: 20,color: Colors.black45,),
      title: Text("$title"),
      trailing: Switch(onChanged: (value) {

        temp;


      },
      value: false),
    );
  }


}
