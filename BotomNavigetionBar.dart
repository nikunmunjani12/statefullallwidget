import 'package:flutter/material.dart';

import 'Card-Widget.dart';
import 'Drower-PoPmenuItem.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({Key? key}) : super(key: key);

  @override
  State<BottomNavBarDemo> createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  // List item = [BottomNavBarDemo(), Poppopmenu(), Cardhomewidget()];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: item[selected],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selected,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          //backgroundColor: Colors.teal,
          onTap: (value) {
            setState(() {});
            selected = value;
          },
          elevation: 5,
          // showSelectedLabels: true,
          //showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
