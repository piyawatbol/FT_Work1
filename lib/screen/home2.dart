// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, prefer_const_literals_to_create_immutables, unused_field, prefer_final_fields, avoid_print

import 'package:flutter/material.dart';
import 'package:work1/data/image.dart';
import 'package:work1/widgets/recipe_card.dart';
// import 'package:work1/widgets/cardcustom.dart';

class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Food Recipe",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                RecipeCard(
                  cookTime: '25 min',
                  rating: '4.8',
                  thumbnailUrl: food1,
                  title: 'ร้านแม่ประนอม',
                ),
                RecipeCard(
                  cookTime: '10 min',
                  rating: '4.7',
                  thumbnailUrl: food2,
                  title: 'ย่างเนย',
                ),
                RecipeCard(
                  cookTime: '5 min',
                  rating: '4.9',
                  thumbnailUrl: food3,
                  title: 'กระเพราไฟนรก',
                ),
                RecipeCard(
                  cookTime: '18 min',
                  rating: '4.6',
                  thumbnailUrl: food4,
                  title: 'ก๋วยเตี๋ยวเรืออยุทยา',
                ),
                RecipeCard(
                  cookTime: '15 min',
                  rating: '4.7',
                  thumbnailUrl: food5,
                  title: 'ข้าวมันไก่ เจ้าเก่าเจ้าเดิม',
                ),
                RecipeCard(
                  cookTime: '21 min',
                  rating: '4.4',
                  thumbnailUrl: food6,
                  title: 'ร้านข้าวแกง เเฮปปี้เเลนด์',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
