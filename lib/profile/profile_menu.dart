// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(21),
          color: Colors.red.shade800,
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 23,
                color: Colors.black,
              ),
              SizedBox(
                width: 23,
              ),
              Expanded(
                  child: Text(text,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17))),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          )),
    );
  }
}
