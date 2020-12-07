
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> img = [
      "img/pk.jpg",
    "img/mb.jpg",
    "img/aa.jpg",
    "img/rc.jpg",
    "img/pk.jpg",
    "img/mb.jpg",
    "img/selfi1.jpeg" ,
    "img/aa.jpg",


  ];
  List<String> imgS = [
    "img/mb.jpg",

    "img/rc.jpg",
    "img/pk.jpg",
    "img/mb.jpg",
    "img/pk.jpg",
    "img/mb.jpg",

    "img/rc.jpg",
    "img/pk.jpg",
    "img/mb.jpg",

    "img/aa.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      SingleChildScrollView(
        child: SafeArea(
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("img/selfi1.jpeg",),
                      radius: 25,
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 60,
                        child: TextField(
                            decoration: InputDecoration(
                              hintText: "Write Something here....... \nఇక్కడ ఏదైనా రాయండి",
                                 isDense: true,
                              hintStyle: TextStyle(fontSize: 12),
                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.black

                                ),

                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Divider(height: 2,
                  color:  Color(0xFFc9ccd3),),
              Container(
                height: 45,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Image.asset("img/live.png" ,height: 40,width: 30,),
                          Text("Live" , style:TextStyle(fontWeight: FontWeight.w500, fontSize: 10))
                        ],
                      ),
                      Container(
                        height: 20,
                        width: 2,
                        color: Color(0xFFe4e6eb),
                      ),
                      Row(
                        children: [
                          Image.asset("img/pic.png" ,height: 30,width: 20,),
                          SizedBox(width: 3,),
                          Text("photo" , style:TextStyle(fontWeight: FontWeight.w500, fontSize: 10))
                        ],
                      ),
                      Container(
                        height: 20,
                        width: 2,
                        color:  Color(0xFFc9ccd3),
                      ),
                      Row(
                        children: [
                          Image.asset("img/room.png" ,height: 40,width: 30,),
                          Text("Room" , style:TextStyle(fontWeight: FontWeight.w500, fontSize: 10))
                        ],
                      ),


                    ],
                  ),
                ),
              ),
              Container(
                height: 10,
                color:  Color(0xFFc9ccd3),
              ),
              Container(
                constraints: BoxConstraints(minHeight: 50, minWidth:100 ),
                padding: const EdgeInsets.all(5),
                child: Row(

                  children: [

                    Container(

                      margin: EdgeInsets.all(10),
                      height: 45,
                      width: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset("img/room.png" ,height: 25,width: 25,),
                            SizedBox(width: 5,),
                            Text("Create\nRoom" , style: TextStyle(fontSize: 10,),)
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(

                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),

                    ),

                   Expanded(child: Container( height: 40, width: double.infinity, child: ListView.builder(
                       itemCount: img.length,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context, index){
                     return ActiveShowImages(image: img[index],);
                   }),)),





                  ],
                ),
              ),
              Container(
                height: 10,
                 color: Color(0xFFc9ccd3),
              ),

              Container(
                     height: 200,
                width: 500,
                child: ListView.builder(
                    itemCount: imgS.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Status(imageS: imgS[index],);
                    }),
              ),
              Container(
                height: 10,
                color: Color(0xFFc9ccd3),
              ),

          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(

                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('img/pk.jpg'),
                          radius: 25,
                        ),
                        SizedBox(width: 5,),
                        Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Thyview" , style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),),
                            Row(
                              children: [
                                Text("1d ." , style: TextStyle(color: Colors.grey ,fontSize: 10),),
                                Icon(Icons.location_on ,size: 15,)
                              ],
                            ),


                          ],
                        ),


                      ],
                    ),
                    Icon(Icons.more_horiz)

                  ],
                ),
                SizedBox(height: 15,),
                Text("#SafeArea" , style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),
                Image.asset("img/instScaf.jpg")
              ],
            ),
          )  ,

              Container(
                margin: EdgeInsets.only(left: 10,
                right: 10,
                top:5,
                bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("img/like.png" ,height: 30,width: 30,),
                        Text("533" ,style: TextStyle(color: Colors.black,),)


                      ],
                    ),
                    Row(
                      children: [

                        Text("29 Comments. 19 Sharess" , style: TextStyle(color: Colors.black, fontSize: 10),)


                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 2,
                color:Colors.grey
              ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Row(
                     children: [
                       Image.asset("img/likee.png" , height: 40, width: 30,),
                       Text("Like" , style: TextStyle(fontSize: 10),)

                     ],
                   ),
                   Row(
                     children: [
                       Image.asset("img/cmt.png" , height: 20, width: 20,),
                       SizedBox(width: 5,),
                       Text("comment" ,style: TextStyle(fontSize: 10),)

                     ],
                   ),
                   Row(
                     children: [
                       Image.asset("img/share.png" , height: 20, width: 20,),
                       SizedBox(width: 5,),
                       Text("Share" ,style: TextStyle(fontSize: 10),)

                     ],
                   ),

                 ],
               ),
              SizedBox(height: 5,),

              Container(
                height: 10,
                color: Color(0xFFc9ccd3),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('img/aa.jpg'),
                              radius: 25,
                            ),
                            SizedBox(width: 10,),
                            Column(

                              children: [
                                Text("Funmate" , style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("1d ." , style: TextStyle(color: Colors.grey ,fontSize: 10),),
                                    Icon(Icons.location_on ,size: 15,)
                                  ],
                                ),


                              ],
                            ),


                          ],
                        ),
                        Icon(Icons.more_horiz)

                      ],
                    ),
                    SizedBox(height: 15,),

                    Image.asset("img/meme1.jpg")
                  ],
                ),
              )  ,
              Container(
                margin: EdgeInsets.only(left: 10,
                    right: 10,
                    top:5,
                    bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("img/laugh.png" ,height: 30,width: 30,),
                        Text("533" ,style: TextStyle(color: Colors.black,),)


                      ],
                    ),
                    Row(
                      children: [

                        Text("29 Comments. 19 Sharess" , style: TextStyle(color: Colors.black, fontSize: 10),)


                      ],
                    )
                  ],
                ),
              ),
              Divider(
                  height: 2,
                  color:Colors.grey
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset("img/likee.png" , height: 40, width: 30,),
                      Text("Like" , style: TextStyle(fontSize: 10),)

                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("img/cmt.png" , height: 20, width: 20,),
                      SizedBox(width: 5,),
                      Text("comment" ,style: TextStyle(fontSize: 10),)

                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("img/share.png" , height: 20, width: 20,),
                      SizedBox(width: 5,),
                      Text("Share" ,style: TextStyle(fontSize: 10),)

                    ],
                  ),

                ],
              ),







            ],
          ),
        ),
      ),
    );
  }
}

class ActiveShowImages extends StatefulWidget {
  ActiveShowImages({ this.image });
  final String image;
  @override
  _ActiveShowImagesState createState() => _ActiveShowImagesState();
}

class _ActiveShowImagesState extends State<ActiveShowImages> {
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Stack(
          
           children: [

              CircleAvatar(
                 backgroundImage: AssetImage(widget.image),
                radius: 30,
               ),


             Padding(
               padding: const EdgeInsets.only(left: 35,
                                               top :30),
               child: CircleAvatar(
                 backgroundImage: AssetImage("img/activeIcon.png" ,),
                 radius: 10,
               ),

             ),
           ],
        ),

      ],
    ) ;
  }
}

class Status extends StatefulWidget {
  Status({
    this.imageS
}
      );
  final String imageS;
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container
                (
                height: 500,
                width: 150,
                child: Image.asset(widget.imageS),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 28,
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.imageS,),
                  radius: 25,
                ),
              ),
            ),


          ],
        ),
        SizedBox(width: 10,)
      ],
    );
  }



}






