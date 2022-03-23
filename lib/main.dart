import 'package:designs/screens/clipping_test.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/basic_design_round_2.dart';
import 'package:designs/screens/home_screen.dart';
import 'package:designs/screens/scroll_design_animated.dart';
import 'package:designs/screens/challenges/game_design.dart';
import 'screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'game_screen',
      title: 'Material App',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'basic_design_round_2': (_) => BasicDesignScreenRound2(),
        'scroll_screen': (_) => ScrollScreen(),
        'scroll_screen_animated': (_) => ScrollScreenAnimated(),
        'home_screen': (_) => HomeScreen(),
        'game_screen': (_) => GameHomePage(),
        'clipping_test': (_) => ClippingTest(),
      },
    );
  }
}
