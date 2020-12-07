 import 'package:flutter/material.dart';
// class GroupsTabBAr extends StatefulWidget {
//   @override
//   _GroupsTabBArState createState() => _GroupsTabBArState();
// }
//
// class _GroupsTabBArState extends State<GroupsTabBAr> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.white,
//
//           bottom: TabBar(
//             labelColor: Colors.blue,
//             tabs: [
//               Tab(icon: Icon(Icons.home ,color: Colors.grey)),
//               Tab(icon: Icon(Icons.video_collection_sharp ,color: Colors.grey)),
//
//             ],
//           ),
//
//
//         ),
//         body:TabBarView(
//           children: [
//
//
//             Icon(Icons.directions_transit),
//             Icon(Icons.directions_transit),
//
//           ],
//         ),
//       ),
//     );
//   }
// }








class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  int activeTab = 0;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TabBar(
        isScrollable: true,
        controller: _tabController,
        onTap: (int index) {
          setState(() {
            activeTab = index;
          });
        },
        tabs: [

          Tab(
            child: Text(
              "All Discussions",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              "Explore",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      _buildTabContent(),
    ]);
  }

  Widget _buildTabContent() {
    if (activeTab == 0) {
      return Container(child: Center(child:  Explore() ));
    }

    if (activeTab == 1) {
      return Container(child: Center(child:AllDiscusiions()));
    }
    return SizedBox();
  }
}

class AllDiscusiions extends StatefulWidget {
  @override
  _AllDiscusiionsState createState() => _AllDiscusiionsState();
}

class _AllDiscusiionsState extends State<AllDiscusiions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 15,
          color: Colors.grey,
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
    );
  }
}


class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                              Text("Nasa " , style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13),),

                            ],
                          ),




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

              Image.asset("img/earth.gif")
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
          height: 5,
          color: Colors.grey,
        ),



        Container(
          height: 5,
          color: Colors.grey,
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
    );
  }
}

