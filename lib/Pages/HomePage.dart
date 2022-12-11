import 'package:flutter/material.dart';
import '../Widgets/DrawerWidget.dart';
import '../Widgets/PopularItemsWidget.dart';
import '../Widgets/NewestItemWidget.dart';
import '../Widgets/AppBarWidget.dart';

import 'package:flutter/cupertino.dart';

import '../Widgets/CategoriesWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.search,
                        color: Color.fromARGB(255, 67, 7, 197)),
                    Container(
                      height: 50,
                      width: 280,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "What would you like to have?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Categories",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 67, 7, 197)),
            ),
          ),
          CategoriesWidget(),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Popular",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 67, 7, 197)),
            ),
          ),
          PopularItemsWidget(),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Newest",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 67, 7, 197)),
            ),
          ),
          NewstItemWidget(),
        ],
      ),
drawer:DrawerWidget(),
      floatingActionButton: Container(
        decoration : BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0,3)
            )
          ]
        ),
        child: FloatingActionButton(
            onPressed: (){},
          child: Icon(CupertinoIcons.cart,
          size: 28,
          color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
    ),
    );
  }
}
