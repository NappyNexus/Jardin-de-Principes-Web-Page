import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jdp_web/Widgets/app_bar.dart';
import 'package:jdp_web/Widgets/certified_card.dart';
import 'package:jdp_web/Widgets/kid_books.dart';
import 'package:jdp_web/Widgets/transforming_card.dart';
import 'package:jdp_web/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgbeige,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2, child: Container(color: Color(0xFFdcdad6))),
            SizedBox(height: 30),
            //First section
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Row(
                        children: [
                          Container(color: Colors.blue),
                          CertifiedCard(),
                          // TransformingCard(),
                        ],
                      ),
                    ],
                  ),
                ),
                //Column(children: [KidBooks()]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
