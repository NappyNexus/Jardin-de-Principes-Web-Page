import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

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


// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Stack(
//             children: [
//               // Big Square with Rounded Cutout at Bottom Right
//               ClipPath(
//                 clipper: BottomRightCutoutClipper(),
//                 child: Container(
//                   width: 200,
//                   height: 200,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(20), // Rounded corners
//                   ),
//                 ),
//               ),
//               // Small Square (Separate)
//               Positioned(
//                 bottom: 5, // Move to bottom
//                 right: 5, // Align to right
//                 child: Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(15), // Rounded corners
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Custom Clipper with Cutout at Bottom Right
// class BottomRightCutoutClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double cutoutSize = 55; // Slightly larger for rounding effect
//     double radius = 20; // Corner radius

//     Path path = Path()
//       ..moveTo(radius, 0) // Top-left corner
//       ..lineTo(size.width - radius, 0) 
//       ..quadraticBezierTo(size.width, 0, size.width, radius) // Top-right rounded corner
//       ..lineTo(size.width, size.height - cutoutSize - radius) 
//       ..quadraticBezierTo(size.width, size.height - cutoutSize, size.width - radius, size.height - cutoutSize)
//       ..lineTo(size.width - cutoutSize + radius, size.height - cutoutSize)
//       ..quadraticBezierTo(size.width - cutoutSize, size.height - cutoutSize, size.width - cutoutSize, size.height - cutoutSize + radius)
//       ..lineTo(size.width - cutoutSize, size.height - radius)
//       ..quadraticBezierTo(size.width - cutoutSize, size.height, size.width - cutoutSize - radius, size.height)
//       ..lineTo(radius, size.height)
//       ..quadraticBezierTo(0, size.height, 0, size.height - radius) // Bottom-left rounded corner
//       ..lineTo(0, radius)
//       ..quadraticBezierTo(0, 0, radius, 0) // Back to start
//       ..close();

//     return path;
//   }

//   @override
//   bool shouldReclip(BottomRightCutoutClipper oldClipper) => false;
// }