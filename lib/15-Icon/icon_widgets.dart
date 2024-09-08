import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';




// link web icon https://ionicons.ez-connect.net/#/

class IconWidgets extends StatefulWidget {
  const IconWidgets({super.key});

  @override
  State<IconWidgets> createState() => _IconWidgetsState();
}

class _IconWidgetsState extends State<IconWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:const [
          Icon(Icons.abc_outlined),
          Text("Ionicons"),//linlk Ionicons https://ionicons.ez-connect.net/#/
          Icon(Ionicons.alarm),
          Icon(Ionicons.alarm_outline),
          Icon(Ionicons.alarm_sharp),
          Icon(Ionicons.chatbox),
          Icon(Ionicons.chatbox),
          Icon(Ionicons.cloud_offline),
          Icon(Ionicons.settings),
          Icon(Ionicons.share),
          Icon(CupertinoIcons.add),//link icons https://api.flutter.dev/flutter/cupertino/CupertinoIcons-class.html#constants
          Icon(IconlyBold.activity),//link https://6thsolution.github.io/flutter_iconly/#/
          FaIcon(FontAwesomeIcons.facebook),


          
        ],
      ),
    );
  }
}