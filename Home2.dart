import 'package:flutter/material.dart';
import 'package:navigation_bar/Chat2.dart';
import 'package:navigation_bar/DeshBoard2.dart';
import 'package:navigation_bar/Setting2.dart';
import 'package:navigation_bar/chat.dart';
import 'package:navigation_bar/profile.dart';
import 'package:navigation_bar/setting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screen = [Deshboard(), Profile(), Chat2(), Setting2()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Deshboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),//PageStoragge

// This the ActionBatton Icon +
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),//Floating ActionButton

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,  // ActionButton center +

      bottomNavigationBar: BottomAppBar(

        // BottomNavigationBar
        shape: CircularNotchedRectangle(),
        notchMargin: 10, //BottomNavigationBar end

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              //   //Dashboard`

              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Deshboard();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                            color: currentTab == 0
                                ? Colors.cyanAccent
                                : Colors.pink),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Profile();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.accessibility_new,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: currentTab == 1
                                ? Colors.cyanAccent
                                : Colors.pink),
                      )
                    ],
                  ),
                ),
              ],
            ),

            //Right TabBar Icon

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Chat2();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Chat",
                        style: TextStyle(
                            color: currentTab == 2
                                ? Colors.pinkAccent
                                : Colors.purpleAccent),
                      )
                    ],
                  ),
                ), //chat 2

                //Setting

                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Setting();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Setting",
                        style: TextStyle(
                            color:
                                currentTab == 3 ? Colors.black : Colors.indigo),
                      )
                    ],
                  ),
                ), //setting 3
              ],
            )
          ],
        ),
      ),
    );
  }
}
