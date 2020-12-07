import 'package:flutter/material.dart';

class VidieosPage extends StatefulWidget {
  @override
  _VidieosPageState createState() => _VidieosPageState();
}

class _VidieosPageState extends State<VidieosPage> {
  List <String> imglist = [

    "img/following.png",
    "img/save.png",
    "img/food.png",
    "img/live.png" ,
    "img/gaming.png",
    "img/music.png" ,

  ];


  List <String> Titlelist = ["Following" , "Saved" , "Food" , "Live"  , "Gaming" ,"Music"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          Text("Watch" , style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black ,fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFe4e6eb),
                            radius: 18,
                            child: Icon(Icons.search_rounded , color: Colors.black,),
                          ),
                          SizedBox(width: 8,),
                          CircleAvatar (
                            backgroundColor: Color(0xFFe4e6eb),
                            radius: 18,
                            child: Icon(Icons.person , color: Colors.black,)

                          ),
                        ],
                      )
                    ],

                  ),
                ) ,

                Container(
                  height: 50,
                  width: 400,

                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imglist.length ,
                      itemBuilder: (context ,index){
                        return  SuggestionButtons(img: imglist[index],
                          Title: Titlelist[index],
                        );
                      }
                  ),
                ), //Watch
                SizedBox(height: 10,),
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
                                backgroundImage: AssetImage('img/tiger.jpg'),
                                radius: 25,
                              ),
                              SizedBox(width: 5,),
                              Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Animals Planet" , style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),),
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
                      Text("#What_The_Ducks" , style: TextStyle(color: Colors.blue, fontSize: 14,fontWeight: FontWeight.w500),),
                      Image.asset("img/birds.gif"),
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
                                backgroundImage: AssetImage('img/kajal.jpg'),
                                radius: 25,
                              ),
                              SizedBox(width: 5,),
                              Column(

                                children: [
                                  Text("Fasak" , style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),),
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

                      Image.asset("img/buffering.gif"),
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
                SizedBox(height: 5,),

                Container(
                  height: 15,
                  color: Colors.grey,
                ),


              ],
            ),
          )

      ),
    );
  }
}

class SuggestionButtons extends StatefulWidget {
  SuggestionButtons({ this.img ,this.Title });
  final String img;
  final String Title;

  @override
  _SuggestionButtonsState createState() => _SuggestionButtonsState();
}

class _SuggestionButtonsState extends State<SuggestionButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Container(
          height: 38,
          width: 100,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFe4e6eb)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(widget.img ,height: 20,width: 20,),
                SizedBox(width: 5,),
                Text(widget.Title, style: TextStyle(fontSize: 10),),

              ],
            ),
          ),
        ),
        SizedBox(width: 10,)
      ],
    );
  }
}