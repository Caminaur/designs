import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
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

class Page2 extends StatelessWidget {
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
              child: Text('Bienvenido',
                  style: TextStyle(fontSize: 30.0, color: Colors.white)),
            ),
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098FA),
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
