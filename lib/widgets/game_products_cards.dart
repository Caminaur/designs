import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class GameProductsCards extends StatefulWidget {
  @override
  _GameProductsCardsState createState() => _GameProductsCardsState();
}

class _GameProductsCardsState extends State<GameProductsCards> {
  final List<Map<int, String>> productos = [
    {0: "Dual Sense", 1: "Official PS5 controller", 2: "joystick-1.png"},
    {0: "Dual Sense White", 1: "Unlimited Edition", 2: "joystick-2.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(right: 25.0),
        child: Swiper(
          itemWidth: 330.0,
          itemHeight: 650.0,
          layout: SwiperLayout.STACK,
          scale: .5,
          itemCount: productos.length,
          itemBuilder: (_, int index) =>
              ProductBuilder(producto: productos[index]),
        ),
      ),
    );
  }
}

class ProductBuilder extends StatelessWidget {
  final Map<int, String> producto;

  const ProductBuilder({
    Key? key,
    required this.producto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.0,
      height: 630.0,
      margin: EdgeInsets.only(top: 300, left: 50),
      child: ClipPath(
        clipper: BackgroundClipper(),
        clipBehavior: Clip.hardEdge,
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              // radius: .30,
              colors: [
                Color.fromRGBO(67, 75, 190, 1),
                Color.fromRGBO(67, 75, 180, 1),
                Color.fromRGBO(20, 10, 70, 1),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(255, 255, 255, .3),
                offset: Offset(-30, -30),
                spreadRadius: 50.0,
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 1),
                offset: Offset(-300, 300),
                spreadRadius: 50.0,
              ),
            ],
          ),
          child: Container(
            margin: EdgeInsets.only(top: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  alignment: Alignment.center,
                  height: 140.0,
                  width: 120.0,
                  image: AssetImage('assets/${producto[2]}'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0, left: 25.0),
                  child: Text(
                    '${producto[0]}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0, left: 25.0),
                  child: Text(
                    '${producto[1]}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 20.0;

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.lineTo(0, size.height - roundnessFactor);
    // Borde inferior izquierdo
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);

    // Borde inferior derecho
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, roundnessFactor * 2);
    path.quadraticBezierTo(size.width - 10, roundnessFactor,
        size.width - roundnessFactor * 1.5, roundnessFactor * 1.3);

    path.lineTo(
        roundnessFactor * .6, size.height * 0.20 - roundnessFactor * 0.3);
    path.quadraticBezierTo(
        0, size.height * 0.20, 0, size.height * 0.20 + roundnessFactor * .9);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
