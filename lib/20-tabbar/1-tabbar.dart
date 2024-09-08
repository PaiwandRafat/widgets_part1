import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarOne extends StatefulWidget {
  const TabBarOne({super.key});

  @override
  State<TabBarOne> createState() => _TabBarOneState();
}

class _TabBarOneState extends State<TabBarOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.purple,
            indicatorWeight: 2,
            labelColor: Colors.white,
            tabs: [
          Tab(
            text: "TextConstants.titleTab_1",
            icon: Icon(
              Icons.home,
              color: Colors.indigo.shade500,
            ),
          ),
          Tab(
              text: "TextConstants.titleTab_2",
              icon: Icon(
                Icons.email,
                color: Colors.indigo.shade500,
              )),
          ]
          ),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.white70,
          ),
          Container(
            color: Colors.white70,
          )
        ]),
      ) ,
    );
  }
}