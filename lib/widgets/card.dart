// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Crad extends StatelessWidget {
  const Crad({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            image,
            width: 128,
            height: 128,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
