import 'dart:async';

import 'package:flutter/material.dart';

class ScrollScreenAnimated extends StatefulWidget {
  @override
  _ScrollScreenAnimatedState createState() => _ScrollScreenAnimatedState();
}

class _ScrollScreenAnimatedState extends State<ScrollScreenAnimated> {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color(0xff75eacd),
        Color(0xff30BAD6),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        MainContent(),
      ],
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String texto = 'Bienvenido';
  List list = ['Bienvenido', 'Bienvenuto', 'Welcome', 'Wilkommen'];
  List<Color> color = [
    Colors.white,
    Colors.indigo,
    Colors.amber.shade200,
    Colors.black
  ];
  Color actualColor = Colors.white;
  Color actualColor2 = Color(0xff30BAD6);
  int position = 0;
  int position_2 = 1;
  Timer? t;
  @override
  void initState() {
    t = Timer.periodic(Duration(milliseconds: 2000), (_) {
      setState(() {
        if (position_2 != 3) {
          position_2++;
        } else {
          position_2 = 0;
        }
        if (position != 3) {
          position++;
        } else {
          position = 0;
        }
        texto = list[position];
        actualColor = color[position];
        actualColor2 = color[position_2];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff2A697A).withOpacity(0.5),
                offset: Offset(0.0, 6.0),
                spreadRadius: 0.0,
                blurRadius: 15.0,
              )
            ],
          ),
          child: TextButton(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 45.0, vertical: 0.0),
              child: Text('$texto',
                  style: TextStyle(fontSize: 30.0, color: actualColor)),
            ),
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: actualColor2,
              shape: StadiumBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text('11°', style: textStyle),
          SizedBox(height: 17),
          Text('Miércoles', style: textStyle),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, size: 120, color: Colors.white)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}
