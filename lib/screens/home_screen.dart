import 'package:flutter/material.dart';

import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/custom_bottom_navigation_bar.dart';
import 'package:designs/widgets/card_table.dart';
import 'package:designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar:
          SizedBox(height: 60, child: CustomBottomNavigationBar()),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
