import 'package:flutter/material.dart';
import 'package:jdp_web/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgbeige,
        title: Text('Jardin de Principes'),
      ),
    );
  }
}
