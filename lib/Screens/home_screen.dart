import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Image.asset('assets/Moms_logo-01.png'),
        title: Text('JDP'),
        // actions: [],
      ),
    );
  }
}
