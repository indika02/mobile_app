import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';

class NewstItemWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Column(
          children: [

            // for(int i=0;i<10;i++)
             Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10),
              child: Container(
                width: 380,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    )
                  ]
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){

                          Navigator.pushNamed(context, "itemPage");
                        },

                      child:Container(
                        alignment: Alignment.center,
                        child: Image.asset("images/headset.jpg",
                          height: 120,
                          width: 150,
                        ),
                      ),
                      // child: Container,
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Branded Products",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Your Best Choice",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                         RatingBar.builder(
                           initialRating: 4,
                           minRating: 1,
                           direction: Axis.horizontal,
                           itemCount: 5,
                           itemSize: 18,
                           itemPadding: EdgeInsets.symmetric(horizontal: 4),
                           itemBuilder: (context,_)=>Icon(
                              Icons.star,
                           color: Color.fromARGB(255, 197, 7, 178),
                           ),
                           onRatingUpdate: (index){},),
                          Text("\$10",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 197, 7, 178),
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.favorite_border,
                                color:Color.fromARGB(255, 197, 7, 178),
                                size: 26,
                                ),
                                Icon(
                                CupertinoIcons.cart,
                                  color:Color.fromARGB(255, 197, 7, 178),
                                  size: 26,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}