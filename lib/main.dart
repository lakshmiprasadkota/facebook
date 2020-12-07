


import 'dart:async';


import 'package:facebook/loginPage.dart';
import 'package:flutter/material.dart';


void main ()=> runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Splashscreen(),
));
class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                height: 200,
                  width: 200,
                  child: Image.asset("img/Facebook-logo.png")),


              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50,
                  child: Image.asset("img/loadgif2.gif") ,
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
