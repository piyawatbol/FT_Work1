// ignore_for_file: prefer_const_constructors, deprecated_member_use
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:work1/profile/profile_menu.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:work1/profile/profile_pic.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'PROFILE',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ProfilePic(),
                SizedBox(height: 23),
                ProfileMenu(
                  icon: 'assets/icons/user.svg',
                  press: () {},
                  text: 'My Acount',
                ),
                ProfileMenu(
                  icon: 'assets/icons/noti.svg',
                  press: () {},
                  text: 'Notification',
                ),
                ProfileMenu(
                  icon: 'assets/icons/Settings.svg',
                  press: () {},
                  text: 'Settings',
                ),
                ProfileMenu(
                  icon: 'assets/icons/question.svg',
                  press: () {},
                  text: 'Help Center',
                ),
                ProfileMenu(
                  icon: 'assets/icons/logout.svg',
                  press: () {},
                  text: 'Log Out',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
