import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jdp_web/colors.dart';

class NavBarTitles extends StatelessWidget {
  const NavBarTitles({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: lettergrey,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
