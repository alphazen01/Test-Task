import 'package:flutter/material.dart';
import 'package:test/screens/home.dart';
import 'package:test/screens/explore.dart';

import 'package:test/screens/inbox.dart';
import 'package:test/screens/shop.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ExplorScreen(),
    InboxScreen(),
    ShopScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey,
            ),
            label: "Shop",
          ),
        ],
       type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor:Colors.white,
        selectedItemColor: Color(0xffF15223),
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Color(0xffF15223)
        ),
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
