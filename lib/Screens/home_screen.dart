import 'package:flutter/material.dart';
import 'package:jdp_web/Widgets/nav_bar_titles.dart';
import 'package:jdp_web/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 300,
        backgroundColor: Colors.amber,
        leading: SizedBox.expand(
          child: Center(
            child: Text(
              'Jardin de Principes',
              style: TextStyle(
                fontFamily: 'Freshman',
                color: jdpblue,
                decoration: TextDecoration.underline,
                decorationColor: jdporange,
                decorationThickness: 2,
                fontSize: 25,
              ),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            NavBarTitles(title: 'Find Sub', onTap: () {}),
            NavBarTitles(title: 'For School', onTap: () {}),
            NavBarTitles(title: 'Resource', onTap: () {}),
            NavBarTitles(title: 'About US', onTap: () {}),
          ],
        ),
        actions: [],
      ),
    );
  }
}
