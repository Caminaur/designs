import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined, size: 30.0),
          label: "Calendar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.blur_linear, size: 30.0),
          label: "Grafica",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_sharp, size: 30.0),
          label: "Usuarios",
        ),
      ],
    );
  }
}
