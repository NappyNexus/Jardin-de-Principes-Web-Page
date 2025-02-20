import 'package:flutter/material.dart';
import 'package:jdp_web/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('EduLearn'),
//         actions: [
//           NavBarItem(label: 'Find Sub', onTap: () {}),
//           NavBarItem(label: 'For School', onTap: () {}),
//           NavBarItem(label: 'Resource', onTap: () {}),
//           NavBarItem(label: 'About Us', onTap: () {}),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Handle the appointment action
//               },
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.green, // Text color
//               ),
//               child: Text('Make Appointment'),
//             ),
//           ),
//         ],
//       ),
//       body: Center(child: Text('Welcome to EduLearn!')),
//     );
//   }
// }

// class NavBarItem extends StatelessWidget {
//   final String label;
//   final VoidCallback onTap;

//   const NavBarItem({super.key, required this.label, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: InkWell(
//         onTap: onTap,
//         child: Text(label, style: TextStyle(fontSize: 16, color: Colors.black)),
//       ),
//     );
//   }
// }
