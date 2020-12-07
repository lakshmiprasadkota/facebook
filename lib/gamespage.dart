
import 'package:flutter/material.dart';
class GamePage extends StatefulWidget {

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  List <String> imglist = [

    "img/following.png",
    "img/save.png",
    "img/food.png",
    "img/live.png" ,
    "img/gaming.png",
    "img/music.png" ,

  ];
  List <String> Titlelist = ["Following" , "Saved" , "Food" , "Live"  , "Gaming" ,"Music"];

  List <String> Gimglist = [

    "img/game6.jpg","img/game2.jpg","img/game3.jpg","img/game4.jpg","img/game5.jpg","img/game6.jpg" ,


  ];


  List <String> Gtitlelist = ["Games\napi" , "Chadvuko\n raa", "Kuyaaa " , "Yepudu \nchudu"  , "Games ye " ," From Fce book"];

  List <String> Vimglist = [

    "img/pubg2.gif","img/pubg3.gif","img/pubg4.gif","img/pubgv.gif","img/pubgbike.gif","img/pubg2.gif",


  ];


  List <String> Vtitlelist = ["Best Game Play" , "New Bermuda Map", "Kings Of Pubg " , "Mg Kinger "  , "Botts Fucker " ," Chiken Dinner King"];

  List <String> Vprofilelist = [

    "img/game6.jpg","img/game2.jpg","img/game3.jpg","img/game4.jpg","img/game5.jpg","img/game6.jpg" ,


  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [



            Container(
              margin: EdgeInsets.only(left: 10 , right: 10 , top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gaming" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xFFe4e6eb),
                        radius: 18,
                        child: Icon(Icons.person , color: Colors.black,),

                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundColor: Color(0xFFe4e6eb),
                        radius: 18,
                        child: Icon(Icons.search , color: Colors.black,),
                      ),
                    ],
                  )

                ],),
            ),

            Container(
              height: 50,
              width: 400,
              margin: EdgeInsets.only(left: 10 , right: 10 ,  bottom: 10),

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
            ),

            Divider(
              height: 2,
              color: Colors.grey,
            ),

            Container(
              margin: EdgeInsets.only(left: 10  , top: 5, bottom: 10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Recent Activity" ,  style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),

                  SizedBox(height: 10,),
                  Container(
                    height: 112,
                    width: 400,
                    margin: EdgeInsets.only(left: 10 , right: 10 ),

                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Gimglist.length ,
                        itemBuilder: (context ,index){
                          return  SuggestionGames(Gimg: Gimglist[index],
                            Gtitle: Gtitlelist[index],
                          );
                        }
                    ),
                  ),
                ],
              ),
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
                            backgroundImage: AssetImage('img/game3.jpg'),
                            radius: 22,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                children: [
                                  Text("BomBom Tv PUBG " , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13),),
                                  Text("is playng" , style: TextStyle( fontSize: 10 ,color: Colors.black),),
                                  Text(" PubG " , softWrap: true,style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12),),

                                ],
                              ),
                              Text(" Mobile" , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12),),



                              Row(

                                children: [
                                  Text("13 jul at 2:49 pm" , style: TextStyle(color: Colors.grey ,fontSize: 10 ,fontWeight: FontWeight.w700),),
                                  Icon(Icons.location_on ,size: 10,)
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

                  Image.asset("img/pubgbike.gif")
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


            Container(
              height: 10,
              color: Color(0xFFc9ccd3),
            ),


            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Streams" , style: TextStyle(color: Colors.black ,fontSize: 15 ,fontWeight: FontWeight.w700),),
                  Text("See All" , style: TextStyle(color: Colors.blue,fontSize: 15 ,fontWeight: FontWeight.w700),),




                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10 ,top: 10),
              height: 200,



              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Vimglist.length ,
                  itemBuilder: (context ,index){
                    return SuggestionVideos (Vimg: Vimglist[index],
                        Vtitle: Vtitlelist[index],
                        Vprofile: Vprofilelist[index]
                    );
                  }
              ),
            ),


            SizedBox(height: 20,),
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
                            backgroundImage: AssetImage('img/game5.jpg'),
                            radius: 22,
                          ),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              Text("Top Clipss" , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),),



                              Row(

                                children: [
                                  Text("13 jul at 2:49 pm" , style: TextStyle(color: Colors.grey ,fontSize: 8 ,fontWeight: FontWeight.w700),),
                                  Icon(Icons.location_on ,size: 13,)
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

                  Image.asset("img/pubgv.gif")
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
    ));
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



class SuggestionGames extends StatefulWidget {
  SuggestionGames({this.Gimg , this.Gtitle });
  final String Gimg;
  final String Gtitle ;

  @override
  _SuggestionGamesState createState() => _SuggestionGamesState();
}

class _SuggestionGamesState extends State<SuggestionGames> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  child: CircleAvatar(

                    radius: 31,
                    backgroundImage: AssetImage(widget.Gimg),
                  )),
              Text(widget.Gtitle , style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.w700),)
            ],
          ),
          SizedBox(width: 10,)

        ],),
    );
  }
}


class SuggestionVideos extends StatefulWidget {
  SuggestionVideos({this.Vimg , this.Vtitle , this.Vprofile});
  final String Vimg;
  final String Vtitle ;
  final String Vprofile;

  @override
  _SuggestionVideosState createState() => _SuggestionVideosState();
}

class _SuggestionVideosState extends State<SuggestionVideos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 250,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(10,8),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child:Column(
                  children: [

                    Container(child: ClipRRect(
                        borderRadius:BorderRadius.circular(10),
                        child: Image.asset(widget.Vimg , height: 150, width: 250, fit: BoxFit.cover,))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(widget.Vprofile),
                          radius: 20,
                        ),

                        Text(widget.Vtitle , style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 15),)
                      ],
                    )




                  ],
                ),


              )
            ], ),
          SizedBox(width: 10,)

        ],),
    );
  }
}













