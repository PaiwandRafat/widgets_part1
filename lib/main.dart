import 'package:flutter/material.dart';
import 'package:widgets_part1/11-stack/stackone.dart';
import 'package:widgets_part1/12-indexedstack/indexedstackOne.dart';
import 'package:widgets_part1/12-indexedstack/indexedstackTwo.dart';
import 'package:widgets_part1/13-expended/expendedTwo.dart';
import 'package:widgets_part1/17-center/center_widgets.dart';
import 'package:widgets_part1/2-container/container1.dart';
import 'package:widgets_part1/20-tabbar/1-tabbar.dart';
import 'package:widgets_part1/20-tabbar/2-tabbar.dart';
import 'package:widgets_part1/22-pageView/1-pageview.dart';
import 'package:widgets_part1/22-pageView/2-pageview.dart';
import 'package:widgets_part1/3-divider/dividerone.dart';
import 'package:widgets_part1/4-card/cardone.dart';
import 'package:widgets_part1/5-row/row_one.dart';
import 'package:widgets_part1/6-column/colimn_one.dart';

import '10-singlechildScrollview/singleOne.dart';
import '13-expended/expendedOne.dart';
import '14-sizedbox/sizedbox_one.dart';
import '15-Icon/icon_widgets.dart';
import '16-images/image_widgets.dart';
import '18-appBar/app_bar.dart';
import '18-appBar/appbar_widgets.dart';
import '19-drawer/drawer_widgets.dart';
import '21-buttom_bart/0-buttom-navigation_bar.dart';
import '21-buttom_bart/1-buttom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:SizedBoxOne(),
    );
  }
}

