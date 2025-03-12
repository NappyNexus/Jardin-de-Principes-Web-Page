import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jdp_web/colors.dart';

class KidBooks extends StatelessWidget {
  const KidBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgbeige,
      body: Stack(
        children: [
          Positioned(
            top: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 15,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 160,
                    width: 300,
                    child: SvgPicture.asset(
                      'assets/7458753_3677079.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 160,
                    width: 500,
                    child: SvgPicture.asset(
                      'assets/7458753_3677079.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 160,
                    width: 500,
                    child: SvgPicture.asset(
                      'assets/7458753_3677079.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -40,
            left: -60,
            child: Image.asset('assets/smiley-boy.png', height: 700),
          ),
          Positioned(
            top: 120,
            child: Image.asset('assets/idea_lines.png', height: 190),
          ),
        ],
      ),
    );
  }
}
