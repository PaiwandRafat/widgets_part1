import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWedgits extends StatefulWidget {
  const DrawerWedgits({super.key});

  @override
  State<DrawerWedgits> createState() => _DrawerWedgitsState();
}

class _DrawerWedgitsState extends State<DrawerWedgits> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            key: _scaffoldKey,

      appBar: AppBar(
      
        title:const Text('Telegram-like Drawer Example'),
        leading: IconButton(
          icon:const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      
      ),
     drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          const  UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'JD',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading:const Icon(Icons.message),
              title:const Text('Chats'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Chats page
              },
            ),
            ListTile(
              leading:const Icon(Icons.group),
              title:const Text('Contacts'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Contacts page
              },
            ),
            ListTile(
              leading:const Icon(Icons.settings),
              title:const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Settings page
              },
            ),
            ListTile(
              leading:const Icon(Icons.notifications),
              title:const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Notifications page
              },
            ),
          const  Divider(),
            ListTile(
              leading:const Icon(Icons.help),
              title:const Text('Help & Feedback'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Help & Feedback page
              },
            ),
            ListTile(
              leading:const Icon(Icons.exit_to_app),
              title:const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                // Handle Logout
              },
            ),
          ],
        ),
      ),
      body:const Center(
        child: Text('Hello, Telegram-like App!'),
      ),
     endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                color: Colors.green,
                child:const Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                      minRadius: 35,
                      maxRadius: 35,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Priyanshu",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
             const  Divider(),
          const    SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: (() {
                    // Navigator.pop(
                    //     context,
                    //     new MaterialPageRoute(
                    //         builder: (context) => new HomePageMain()));
                  }),
                  child:const Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
             const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: (() {
                    // Navigator.push(
                    //     context,
                    //     new MaterialPageRoute(
                    //         builder: (context) => new ExploreMenuPage()));
                  }),
                  child:const Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Explore Menus",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              ExpansionTile(
                title:const Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(CupertinoIcons.person_3_fill, color: Colors.black),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Vendors",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
 
                childrenPadding:const EdgeInsets.only(left: 25), // children padding
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //     context,
                        //     new MaterialPageRoute(
                        //         builder: (context) => new VendorVenuePage()));
                      }),
                      child:const Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            CupertinoIcons.waveform_circle_fill,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Venue",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                 const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //     context,
                        //     new MaterialPageRoute(
                        //         builder: (context) =>
                        //             new VendorPhotographerPage()));
                      }),
                      child:const Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Photographer",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
              const    SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //     context,
                        //     new MaterialPageRoute(
                        //         builder: (context) =>
                        //             new VendorCenematographyPage()));
                      }),
                      child:const Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.video_call),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cinematography",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                const  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //     context,
                        //     new MaterialPageRoute(
                        //         builder: (context) => new VendorMakeupPage()),);
                      }),
                      child:const Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.brush),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Makeup Artists",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
 
                  //more child menu
                ],
              ),
 
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: (() {
                    // Navigator.push(
                    //     context,
                    //     new MaterialPageRoute(
                    //         builder: (context) => new DrawerPackages()));
                  }),
                  child:const Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.wallet_giftcard_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Package",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}