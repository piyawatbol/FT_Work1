// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:work1/widgets/card.dart';

class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final image =
      'https://icon-library.com/images/create-icon-free/create-icon-free-18.jpg';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(23),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg'),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Piyawat Sakdadet",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      primary: false,
                      children: <Widget>[
                        Crad(
                          image: image,
                          title: 'dog1',
                        ),
                        Crad(
                          image: image,
                          title: 'dog2',
                        ),
                        Crad(
                          image: image,
                          title: 'dog3',
                        ),
                        Crad(
                          image: image,
                          title: 'dog4',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
