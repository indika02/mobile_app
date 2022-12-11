import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemBottomNavBar extends StatelessWidget{
  Widget build(BuildContext context){
    return BottomAppBar(
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          height: 70,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:[
                    Text(
                      "Total: ",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "\$80",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: (){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      )
                  ),
                  icon:Icon(CupertinoIcons.cart),
                  label: Text("Add to Cart",style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold),),

                ),
              ]
          )
      ),
    );
  }
}