import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding:EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 7, 197),
              ),
              accountName:
              Text("Programmer",
               style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              accountEmail:
              Text("indika@gmail.com",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/headset.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,
            color: Color.fromARGB(255, 67, 7, 197),
            ),
            title: Text(

              "Home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person,
              color: Color.fromARGB(255, 67, 7, 197),
            ),
            title: Text(
              "MyAccount",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cart_fill,
              color: Color.fromARGB(255, 67, 7, 197),
            ),
            title: Text(
              "Favorities",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.question_circle,
              color: Color.fromARGB(255, 67, 7, 197),
            ),
            title: Text(
              "Terms & Conditions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,
              color: Color.fromARGB(255, 67, 7, 197),
            ),
            title: Text(
              "Log out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}