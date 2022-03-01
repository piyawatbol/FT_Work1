// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_final_fields, unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work1/screen/profile.dart';
import 'package:work1/screen/home1.dart';
import 'package:work1/screen/home2.dart';
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
      theme: ThemeData(
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
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
  final bottomTextStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  final tabs = [Home1(), Home2(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavagation2(),
      //NavigationDrawer(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? SvgPicture.asset(
                    'assets/icons/home_colored.svg',
                  )
                : SvgPicture.asset('assets/icons/home.svg'),
            label: "Home",
          ),
          // tab 2
          BottomNavigationBarItem(
            label: 'home2',
            icon: _currentIndex == 1
                ? SvgPicture.asset('assets/icons/order_colored.svg')
                : SvgPicture.asset('assets/icons/order.svg'),
          ),
          // tab 3
          BottomNavigationBarItem(
            label: 'home3',
            icon: _currentIndex == 2
                ? SvgPicture.asset('assets/icons/account_colored.svg')
                : SvgPicture.asset('assets/icons/account.svg'),
          )
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
