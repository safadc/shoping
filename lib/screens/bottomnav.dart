import 'package:flutter/material.dart';
import 'package:shoping/screens/myhomepage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNav> {
  int currentIndex = 0;

  List<Widget> widgets = [
    MyHomepage(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.brown,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgets[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey.shade200,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: iconWidget(Icons.person, 0),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: iconWidget(Icons.shop, 1),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: iconWidget(Icons.home, 2),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: iconWidget(Icons.favorite, 3),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: iconWidget(Icons.settings, 4),
              label: "",
            ),
          ],
        ),
      ),
    );
  }

  Widget iconWidget(IconData icon, int i) {
    if (currentIndex == i) {
      return CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: Icon(
          icon,
          color: Colors.pink,
        ),
      );
    }
    return Icon(icon);
  }
}
