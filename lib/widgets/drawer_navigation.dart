// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_declarations

import 'package:flutter/material.dart';

final name = 'Piyawat';
final email = 'piyawatbol@gmail.com';
final urlImage =
    'https://s.isanook.com/ca/0/ui/279/1396205/download20190701165129_1562561119.jpg';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  static final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(50, 55, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              context,
              urlImage: urlImage,
              name: name,
              email: email,
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    text: "People",
                    icon: Icons.people,
                  ),
                  SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    text: "Favorite",
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(height: 24),
                  buildMenuItem(context,
                      text: "Workflow", icon: Icons.workspaces_outline),
                  SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    text: "Update",
                    icon: Icons.update,
                  ),
                  SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  SizedBox(height: 24),
                  SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    text: "Plugin",
                    icon: Icons.account_tree_outlined,
                  ),
                  SizedBox(height: 24),
                  buildMenuItem(
                    context,
                    text: "Notification",
                    icon: Icons.notifications_outlined,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(
    BuildContext context, {
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;
    return Material(
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color)),
        onTap: () {},
      ),
    );
  }
}

Widget buildHeader(
  BuildContext context, {
  required String urlImage,
  required String name,
  required String email,
}) =>
    Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => {},
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
