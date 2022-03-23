import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.lightBlue,
              icon: Icons.add_chart,
              text: "General",
            ),
            _SingleCard(
              color: Colors.deepPurple.shade300,
              icon: Icons.menu,
              text: "Transport",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Color.fromRGBO(255, 80, 255, 1),
              icon: Icons.shopping_bag,
              text: "Shopping",
            ),
            _SingleCard(
              color: Color.fromRGBO(255, 160, 54, 1),
              icon: Icons.request_page,
              text: "Bills",
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Color.fromRGBO(0, 132, 204, 1),
              icon: Icons.movie_filter,
              text: "Entertainment",
            ),
            _SingleCard(
              color: Color.fromRGBO(0, 200, 158, 1),
              icon: Icons.food_bank,
              text: "Grocery",
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration1 = BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white70,
          color,
        ],
      ),
    );
    // final boxDecoration2 = BoxDecoration(
    //   shape: BoxShape.circle,
    //   gradient: LinearGradient(
    //     begin: Alignment.topLeft,
    //     end: Alignment.bottomRight,
    //     colors: [
    //       Colors.white,
    //       color,
    //     ],
    //   ),
    // );
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // CircleAvatar(
          //   foregroundColor: Colors.white,
          //   backgroundColor: this.color,
          //   child: Icon(icon, size: 35),
          //   radius: 30.0,
          // ),
          Container(
            decoration: boxDecoration1,
            child: Icon(icon, size: 35, color: Colors.white),
            height: 60,
            width: 60,
          ),
          SizedBox(height: 10.0),
          Container(
            child: Text(
              this.text,
              style: TextStyle(
                fontSize: 18.0,
                color: this.color,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
