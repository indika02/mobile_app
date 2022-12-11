import 'package:flutter/material.dart';

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
                color: Colors.red,
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
        ],
      ),
    );
  }
}