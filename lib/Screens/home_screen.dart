import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jdp_web/Widgets/nav_bar_button.dart';
import 'package:jdp_web/Widgets/nav_bar_titles.dart';
import 'package:jdp_web/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgbeige,
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 350,
        toolbarHeight: 70,
        backgroundColor: bgbeige,
        //bottom divider
        leading: SizedBox.expand(
          child: Center(
            child: Text(
              'JARDIN DE PRINCIPES',
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
        actions: [
          AppointmentButton(onPressed: () {}, text: 'Make Appointment'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2, child: Container(color: Color(0xFFdcdad6))),
            SizedBox(height: 30),
            //First section
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Keep Learning\non Track',
                      style: GoogleFonts.poppins(
                        fontSize: 125,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'When schools and districts have reliable access to\nsubstitute teachers and subs have the freedom to\nchoose what and when they teach.',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
