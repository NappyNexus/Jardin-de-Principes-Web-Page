import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransformingCard extends StatelessWidget {
  const TransformingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Stack(
            children: [
              // Big Square with Rounded Cutout
              ClipPath(
                clipper: RoundedCutoutClipper(),
                child: Container(
                  width: 350,
                  height: 330,
                  decoration: BoxDecoration(
                    color: Color(0xFFefefef),
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Container(
                              height: 120,
                              width: 210,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFefefef),
                                image: DecorationImage(
                                  image: AssetImage('assets/kid_board.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 20),

                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Transforming schools\n and substitute\n teachers',
                              style: GoogleFonts.poppins(
                                fontSize: 27,
                                color: Color(0xFF2d2d2d),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Image.asset(
                          'assets/green_starline.png',
                          width: 70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Small Square (Separate)
              Positioned(
                top: 5, // Offset slightly for rounded effect
                right: 5,
                child: Container(
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    color: Color(0xFFefefef),
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                  ),
                  child: Image.asset('assets/orange_arrow.png', scale: 1.3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Clipper with Rounded Cutout
class RoundedCutoutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double cutoutSize = 100; // Slightly larger for rounding effect
    double radius = 20; // Corner radius

    Path path =
        Path()
          ..moveTo(radius, 0)
          ..lineTo(size.width - cutoutSize - radius, 0)
          ..quadraticBezierTo(
            size.width - cutoutSize,
            0,
            size.width - cutoutSize,
            radius,
          )
          ..lineTo(size.width - cutoutSize, cutoutSize - radius)
          ..quadraticBezierTo(
            size.width - cutoutSize,
            cutoutSize,
            size.width - cutoutSize + radius,
            cutoutSize,
          )
          ..lineTo(size.width - radius, cutoutSize)
          ..quadraticBezierTo(
            size.width,
            cutoutSize,
            size.width,
            cutoutSize + radius,
          )
          ..lineTo(size.width, size.height - radius)
          ..quadraticBezierTo(
            size.width,
            size.height,
            size.width - radius,
            size.height,
          )
          ..lineTo(radius, size.height)
          ..quadraticBezierTo(0, size.height, 0, size.height - radius)
          ..lineTo(0, radius)
          ..quadraticBezierTo(0, 0, radius, 0)
          ..close();

    return path;
  }

  @override
  bool shouldReclip(RoundedCutoutClipper oldClipper) => false;
}
