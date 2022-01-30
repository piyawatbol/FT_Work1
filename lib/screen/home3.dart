// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:work1/widgets/cardcustom.dart';

class Home3 extends StatefulWidget {
  Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Container(
            height: height * 0.7,
            width: width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  colors: [Colors.amber.shade900, Colors.amber.shade700]),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CustomPaint(
                size: Size(width, height),
                painter: CardCustomPainter(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
