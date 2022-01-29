// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_final_fields, unused_element, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  BottomNavigationTravelkuy({Key? key}) : super(key: key);

  @override
  State<BottomNavigationTravelkuy> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;
  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          // tab 1
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/icons/home_colored.svg')
                  : SvgPicture.asset('assets/icons/home.svg'),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.black),
              )),
          // tab 2
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/icons/order_colored.svg')
                  : SvgPicture.asset('assets/icons/order.svg'),
              title: Text(
                "order",
                style: TextStyle(color: Colors.black),
              )),
          // tab 3
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/icons/account_colored.svg')
                  : SvgPicture.asset('assets/icons/account.svg'),
              title: Text(
                "Account",
                style: bottomTextStyle,
              ))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
