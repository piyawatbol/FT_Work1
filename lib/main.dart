// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_final_fields, unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work1/screen/profile.dart';
import 'package:work1/screen/home2.dart';
import 'package:work1/screen/home3.dart';

import 'package:work1/widgets/drawer_navigation.dart';
import 'package:work1/widgets/drawer_navigation2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.bold);

  final tabs = [Home2(), Home3(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavagation2(),
      //NavigationDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "WELCOME",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black38,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.black38,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.grey.shade800,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? SvgPicture.asset('assets/icons/home_colored.svg')
                  : SvgPicture.asset('assets/icons/home.svg'),
              title: Text(
                "Home",
                style: bottomTextStyle,
              )),
          // tab 2
          BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? SvgPicture.asset('assets/icons/order_colored.svg')
                  : SvgPicture.asset('assets/icons/order.svg'),
              title: Text(
                "order",
                style: bottomTextStyle,
              )),
          // tab 3
          BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? SvgPicture.asset('assets/icons/account_colored.svg')
                  : SvgPicture.asset('assets/icons/account.svg'),
              title: Text(
                "Account",
                style: bottomTextStyle,
              ))
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}
