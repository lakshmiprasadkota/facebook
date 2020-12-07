import 'dart:async';

import 'package:facebook/facebookMain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3b5998),

   body : Column(
     mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          Image.asset("img/fbl2.png" ,height: 200,width: 200,),
          Padding(
            padding: const EdgeInsets.only(
              left:25,
              right: 10,

            ),
            child: Column(



              children: [


                Container(
                  height: 50,
                  width: 340,
                  child: TextField(
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF2F2F2),
                      border: OutlineInputBorder(),

                      hintText: " Email or Phn No",
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 340,


                  child: TextField(
                    cursorHeight: 20,
                    obscureText: true,
                    decoration: InputDecoration(

                      filled: true,
                      fillColor: Color(0xFFF2F2F2),
                      border: OutlineInputBorder(

                      ),

                      hintText: " Password",

                      suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                  ),
                ),
                SizedBox(height: 40,),

                new GestureDetector(
                    onTap: (){
                      showDialog(context: context,
                          barrierDismissible: false,
                          builder: ( BuildContext context){
                            return Center(
                              child: Opacity(opacity: 1.0,
                                child: CircularProgressIndicator(
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      Colors.blue),
                                ),),
                            );

                          }
                      );

                      Timer(Duration(seconds: 3),
                              ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>facebookfrstpage ())));

                    },


                    child: new Container(
                        width: 340,
                        height: 50,

                        color: Color(0xFF4e69aa),
                        child: Center(child: Text("Login" ,style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w400),),
                    )
                ))
              ],
            ),
          ),

          Column(
            children: [
              Text("Sign Up for Facebook" ,style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.w400),),
              SizedBox(height: 15,),
              Text("Need Help ? " , style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w400),),

            ],
          )




        ],
      )
    );
  }
}
