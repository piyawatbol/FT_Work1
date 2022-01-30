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
  final image1 =
      'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png';
  final image2 = 'https://www.obg.eu.com/img/technologies/react.png';
  final image3 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh7HwVz9h18DrB8OeLJ1oUyWw6JPIBqfxDUEiFi_804PEIQxzvfuW5p0eQ3inRMifes4s&usqp=CAU';
  final image4 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYlEA6Vsz0fqBzwPvPnhncrBwAXizgKMXqSNQmLLctUOtagnhT9U2b9zWAAvFBo4jfAYA&usqp=CAU';
  final image5 =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/640px-Python-logo-notext.svg.png';
  final image6 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg55-xLM8wPpZZPhee03fEfgpVFGv_JylOm3lBCMYou6UbOlcyWZDebAid7ncH-Pxc20E&usqp=CAU';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
                          image: image1,
                          title: 'Flutter',
                        ),
                        Crad(
                          image: image2,
                          title: 'React',
                        ),
                        Crad(
                          image: image3,
                          title: 'HTML',
                        ),
                        Crad(
                          image: image4,
                          title: 'CSS',
                        ),
                        Crad(
                          image: image5,
                          title: 'Python',
                        ),
                        Crad(image: image6, title: 'Raspberry PI'),
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
