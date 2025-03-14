import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertifiedCard extends StatelessWidget {
  const CertifiedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 200,
            top: 30,
            child: Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFFefefef),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Color(0xFF202020),
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                        ),
                        children: [
                          TextSpan(text: 'Best '),
                          TextSpan(
                            text: 'Certified\n',
                            style: TextStyle(color: Color(0xFF2f7a71)),
                          ),
                          TextSpan(text: 'Teacher\n'),
                          TextSpan(text: 'Worldwide\n'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 80),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Color(0xFFaaaaaa),
                          fontWeight: FontWeight.w500,
                          height: 0.9,
                        ),
                        children: [
                          TextSpan(
                            text: '210+\n',
                            style: TextStyle(
                              color: Color(0xFF2f7a71),
                              fontSize: 60,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text: 'Experts already joined us',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: -20,
            child: Image.asset('assets/teacher.png', height: 400),
          ),
        ],
      ),
    );
  }
}
