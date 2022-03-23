import 'package:flutter/material.dart';

class GameProductsCards2 extends StatefulWidget {
  @override
  _GameProductsCards2State createState() => _GameProductsCards2State();
}

class _GameProductsCards2State extends State<GameProductsCards2> {
  final List<Map<int, String>> productos = [
    {0: "Dual Sense", 1: "Official PS5 controller", 2: "joystick-1.png"},
    {0: "Dual Sense White", 1: "Unlimited Edition", 2: "joystick-2.png"},
    {0: "Dual Sense", 1: "Official PS5 controller 2", 2: "joystick-1.png"},
    {0: "Dual Sense White", 1: "Unlimited Edition 2", 2: "joystick-2.png"},
  ];
  final _pageProductController = new PageController(
    viewportFraction: 0.5,
  );
  // ignore: unused_field
  double _currentPage = 0.0;

  void _productScrollListener() {
    setState(() {
      _currentPage = _pageProductController.page!.toDouble();
    });
  }

  @override
  void initState() {
    _pageProductController.addListener(_productScrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _pageProductController.removeListener(_productScrollListener);
    _pageProductController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = -0.4 * 1 + 1;
    final size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    final calculo = size.height / 2.6 * (1 - value).abs();
    return Container(
      margin: EdgeInsets.only(top: 120.0),
      height: 500.0,
      child: Transform(
        origin: Offset(200.0, 320.0),
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..translate(0.0, calculo)
          ..scale(.6),
        child: PageView.builder(
          itemCount: 5,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index) {
            return ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                color: Colors.amber,
              ),
            );
          },
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
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/${producto[2]}'),
          ),
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 20.0;

    var path = Path();

    // path.moveTo(60, 630);
    // // path.lineTo(70, size.height - 30);
    // final firstStart = Offset(60, 650);
    // final firstEnd = Offset(280, 640);

    // path.quadraticBezierTo(
    //   firstStart.dx,
    //   firstStart.dy,
    //   firstEnd.dx,
    //   firstEnd.dy,
    // );
    // final secondStart = Offset(330, 600);
    // final secondEnd = Offset(300, 550);

    // path.lineTo(300, 640);
    // path.quadraticBezierTo(
    //   secondStart.dx,
    //   secondStart.dy,
    //   secondEnd.dx,
    //   secondEnd.dy,
    // );

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
