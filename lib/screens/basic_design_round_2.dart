import 'package:flutter/material.dart';

class BasicDesignScreenRound2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/landscape.jpg'),
            ),
            Title(),
            MiddlePart(),
            Description(),
          ],
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 35.0),
      child: Text(
        'Lake Oeschinen lias at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
        style: TextStyle(fontSize: 17.5),
      ),
    );
  }
}

class MiddlePart extends StatelessWidget {
  const MiddlePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconsMaker(icon: Icons.call, texto: 'CALL'),
        IconsMaker(icon: Icons.zoom_in_rounded, texto: 'ROUTE'),
        IconsMaker(icon: Icons.share, texto: 'SHARE'),
      ],
    );
  }
}

class IconsMaker extends StatelessWidget {
  final IconData icon;
  final String texto;

  const IconsMaker({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40.0,
          color: Colors.lightBlue,
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.lightBlue,
            ),
          ),
        ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 35.0),
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
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            size: 28.0,
            color: Colors.red,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 19.0),
          )
        ],
      ),
    );
  }
}
