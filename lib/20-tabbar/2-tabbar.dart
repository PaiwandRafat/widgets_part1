import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarTwo extends StatefulWidget {
  const TabBarTwo({super.key});

  @override
  State<TabBarTwo> createState() => _TabBarTwoState();
}

class _TabBarTwoState extends State<TabBarTwo> with SingleTickerProviderStateMixin{
  late TabController mycontroller;
  @override
  void initState() {
    mycontroller=TabController(length: 2, vsync: this,
    initialIndex: 1,//ya3ni la kamawa dast pe bkat 
    
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    mycontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar"),
        backgroundColor: Colors.blueAccent,
        bottom: TabBar(
          indicator: BoxDecoration(
    borderRadius: BorderRadius.circular(50), // Creates border
    color: Colors.greenAccent),
          controller: mycontroller,
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
      body: TabBarView(
        controller: mycontroller,
        children: [
        Container(
          color: Colors.white70,
        ),
        Container(
          color: Colors.white70,
        )
      ]),
    );
  }
}