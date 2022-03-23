import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          BottomText(),
        ],
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Text(
            'Lake Oeschinen lias at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run'),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 7.0),
                child: Text(
                  'Oeschien Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red, size: 35.0),
          Text('41', style: TextStyle(fontSize: 25.0)),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(texto: "CALL", icon: Icons.call),
          CustomButton(texto: "ROUTE", icon: Icons.auto_awesome_motion_sharp),
          CustomButton(texto: "SHARE", icon: Icons.share),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String texto;
  const CustomButton({
    Key? key,
    required this.texto,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Icon(icon, color: Colors.lightBlue, size: 45.0),
          ),
          Text('$texto',
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0)),
        ],
      ),
    );
  }
}
