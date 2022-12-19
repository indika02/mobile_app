import'package:flutter/material.dart';
import 'package:untitled3/Pages/SplashScreen.dart';
import 'package:untitled3/Pages/signup_screen.dart';

class login_screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>InitState();
}

class InitState extends State<login_screen>{
  @override
  Widget build(BuildContext context){
    return initWidget();
  }

  Widget initWidget(){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90),
                ),
                color: Color(0xffe011d6),
                gradient: LinearGradient(
                  colors: [(new Color(0xffe011d6)),(new Color(0xffe011d6))],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset("images/headset1.png"),
                      height: 170,
                      width: 170,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20,top: 20),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 70,
              ),
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[350],
                boxShadow: [BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: Color(0xabdad7d7),
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff000000),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xff520750),
                  ),
                  hintText: "Email Address",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              padding: EdgeInsets.only(left: 20,right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[350],
                boxShadow: [BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: Color(0xabdad7d7),
                )],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xff000000),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color(0xff520750),
                  ),
                  hintText: "Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text("Forget Password?"),
                onTap: ()=>{

                },
              ),
            ),
            GestureDetector(
              // onTap: ()=>{
              //
              // },
              onTap: ()=>{
                Navigator.pushNamed(context, "HomePage"),
              },
              child: Container(
                margin: EdgeInsets.only(left:20,right: 20,top: 70,),
                padding: EdgeInsets.only(left: 20,right: 20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color(0xff520750)),(new Color(0xff520750))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: Color(0xabdad7d7),
                  )],
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have Account? "),
                  GestureDetector(
                    onTap: ()=>{
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>signup_screen())
                      )
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        color: Color(0xff520750)
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}