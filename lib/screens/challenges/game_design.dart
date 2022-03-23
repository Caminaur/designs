import 'package:designs/widgets/game_products_cards.dart';
import 'package:flutter/material.dart';

class GameHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 17, 39, .8),
      body: Container(
        child: Stack(
          children: [
            BackGroundBox(),
            VerticalText(),
            TopIcons(),
            MainTitles(),
            MiddleIcons(),
            GameProductsCards(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(height: 140, child: BottomGameBar()),
    );
  }
}

class VerticalText extends StatelessWidget {
  const VerticalText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(bottom: 60),
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          'DUAL SENSORS',
          maxLines: 1,
          overflow: TextOverflow.visible,
          softWrap: false,
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, .1),
            fontWeight: FontWeight.bold,
            fontSize: 120.0,
          ),
        ),
      ),
    );
  }
}

class BottomGameBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(9, 17, 39, 1),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 1),
              offset: Offset(7, 7),
            ),
            BoxShadow(
                color: Color.fromRGBO(255, 255, 255, .2),
                blurRadius: 5.0,
                offset: Offset(-3, -3),
                spreadRadius: 1),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HomeButton(),
            IconButton(
              icon: Icon(
                Icons.verified_user,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "scroll_screen_animated");
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "basic_design_round_2");
              },
            ),
            Icon(
              Icons.flag_rounded,
              size: 30,
            ),
          ],
        ));
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.only(left: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          stops: [0.1, 0.55, 1],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(56, 173, 234, 1),
            Color.fromRGBO(54, 107, 192, 1),
            Color.fromRGBO(75, 50, 249, 1),
          ],
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 5),
          IconButton(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'home_screen');
              }),
          SizedBox(width: 5),
          VerticalDivider(width: 10, thickness: 1.0, color: Colors.white30),
          SizedBox(width: 5),
          Text('Home',
              style: TextStyle(
                fontSize: 20.0,
              )),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

class MiddleIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 260.0, left: 35.0, right: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MiddleIconMaker(
            color: Color.fromRGBO(9, 17, 39, 1),
            color2: Color.fromRGBO(9, 17, 39, 1),
            icon: Icons.checklist_sharp,
          ),
          MiddleIconMaker(
            color: Color.fromRGBO(56, 173, 234, 1),
            color2: Color.fromRGBO(75, 88, 249, 1),
            icon: Icons.gamepad,
          ),
          MiddleIconMaker(
            color: Color.fromRGBO(9, 17, 39, 1),
            color2: Color.fromRGBO(9, 17, 39, 1),
            icon: Icons.bookmark,
          ),
          MiddleIconMaker(
            color: Color.fromRGBO(9, 17, 39, 1),
            color2: Color.fromRGBO(9, 17, 39, 1),
            icon: Icons.games_outlined,
          ),
        ],
      ),
    );
  }
}

class MiddleIconMaker extends StatelessWidget {
  final Color color;
  final Color color2;
  final IconData icon;

  const MiddleIconMaker({
    Key? key,
    required this.color,
    required this.icon,
    required this.color2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 1),
            offset: Offset(5, 5),
            blurRadius: 5.0,
          ),
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, .2),
            spreadRadius: -2,
            blurRadius: 5.0,
            offset: Offset(-5, -5),
          ),
        ],
        color: color,
        borderRadius: BorderRadius.circular(17.0),
      ),
      height: 60.0,
      width: 70.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
            colors: [
              color2,
              color,
            ],
          ),
          borderRadius: BorderRadius.circular(17.0),
        ),
        child: Icon(icon, size: 40.0),
      ),
    );
  }
}

class MainTitles extends StatelessWidget {
  const MainTitles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 130.0, left: 25.0),
      child: Column(
        children: [
          Text(
            'Featured',
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                inherit: false,
                fontFamily: 'Times New Roman'),
          ),
          Stack(
            children: [
              Text(
                'Products',
                style: TextStyle(
                    fontSize: 40.0,
                    inherit: false,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = Color.fromRGBO(255, 255, 255, .8),
                    fontFamily: 'Times New Roman'),
              ),
              Container(
                child: Text(
                  'Products',
                  style: TextStyle(
                      color: Color.fromRGBO(9, 17, 39, .8),
                      fontSize: 40.0,
                      inherit: false,
                      fontFamily: 'Times New Roman'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopIcons extends StatelessWidget {
  const TopIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 54.0,
        left: 29.0,
        right: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BotonMaker(
            icon: Icons.menu,
            color: Color.fromRGBO(56, 173, 234, 1),
          ),
          BotonMaker(
            icon: Icons.shopping_cart_outlined,
            color: Color.fromRGBO(9, 17, 39, .8),
          ),
        ],
      ),
    );
  }
}

class BotonMaker extends StatelessWidget {
  final IconData icon;
  final Color color;

  const BotonMaker({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 3),
        shape: BoxShape.circle,
        gradient: LinearGradient(
          stops: [0.2, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(255, 255, 255, .1),
            Colors.black,
          ],
        ),
      ),
      child: Container(
        height: 50,
        width: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(9, 17, 39, .8),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 25.0,
        ),
      ),
    );
  }
}

class BackGroundBox extends StatelessWidget {
  const BackGroundBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(56, 173, 234, 1),
            Color.fromRGBO(54, 107, 192, 1),
            Color.fromRGBO(67, 75, 218, 1),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(40),
        ),
      ),
      margin: EdgeInsets.only(left: 225),
      height: 620.0,
      width: 350.0,
    );
  }
}
