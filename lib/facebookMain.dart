import 'package:facebook/GroupsPAge.dart';
import 'package:facebook/HomePage.dart';
import 'package:facebook/gamespage.dart';
import 'package:facebook/groupstabar/mainpage.dart';
import 'package:facebook/notifications.dart';
import 'package:facebook/videosPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class facebookfrstpage extends StatefulWidget {
  @override
  _facebookfrstpageState createState() => _facebookfrstpageState();
}

class _facebookfrstpageState extends State<facebookfrstpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(


        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
         
       title: Text("facebook" , style: TextStyle(color:Color(0xFF3b5998),
                fontWeight: FontWeight.w900, fontSize: 25),),



          actions: [

            CircleAvatar(
              backgroundColor: Color(0xFFF2F2F2),
              radius: 18,
              child: Icon(Icons.search_rounded , color: Colors.black,),
            ),
            SizedBox(width: 8,),
           CircleAvatar (
             backgroundColor: Color(0xFFF2F2F2),
              radius: 18,
              child: CircleAvatar(

                radius: 15,
                child: Image.asset("img/messenger.png"),
              ),
            ),
            SizedBox(width: 10,),
          ],
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.home ,) ),
              Tab(icon: Icon(Icons.video_collection_sharp )),
              Tab(icon: Icon(Icons.group_work )),
              Tab(icon: Icon(Icons.videogame_asset )),
              Tab(icon: Icon(Icons.notifications )),
              Tab(icon: Icon(Icons.menu )),

            ],
          ),


          ),
        body:TabBarView(
            children: [

            HomePage(),
              VidieosPage(),
              GroupPage(),
           GamePage(),
        NotificationPage(),
        MenuPage(),
  ],
      ),
      ),
    );
  }
}


class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List <String> img = [
    "img/covid.png",
    "img/frnd.png",
    "img/frnds.png",
    "img/market.png",
    "img/vidieos.png",
    "img/memories.jpg",
    "img/save1.png",
    "img/page.png",
    "img/events.png",
    "img/game.png",
    "img/jobs.jpg",
  ];
  List <String> Title = [
    "Covid-19 Information Center" ,
    "Friends" ,
    "Groups",
    "Market Place" ,
    "Videos on Watch",
    "Memories" ,
    "Saved" ,
    "Pages" ,
    "Events" ,
    "Gaming" ,  "Jobs " ];
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(

      physics: ScrollPhysics(),
        child: SafeArea(child: Container(
          color: Color(0xFFeeeff3),
          child: Container(

            margin: EdgeInsets.only(left: 10 , right: 10 , top :8),
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications " , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
                CircleAvatar(
                  backgroundColor:Colors.white,
                  radius: 18,
                  child: Icon(Icons.search , color: Colors.black,),
                ),


              ],),
            SizedBox(height: 15,),

            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("img/selfi1.jpeg"),
                  radius: 25,
                ),
                SizedBox(width: 10,),
                Column
                  ( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lakshmi Pawan Kings" , style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                    Text("See your profile" , style: TextStyle(fontSize: 11,),)
                  ],)
              ],
            ),
            SizedBox(height: 5,),
            Divider(height: 2,
            color: Colors.grey,),
            SizedBox(height: 5,),

            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("img/pk.jpg"),
                  radius: 25,
                ),
                SizedBox(width: 10,),
                Column
                  ( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Appalenu Brother" , style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),

                  ],)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("img/rc.jpg"),
                  radius: 25,
                ),


                SizedBox(width: 10,),
                Column
                  ( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rc Die-Hard Fans" , style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),

                  ],)
              ],
            ),
            SizedBox(height: 5,),

            Divider(height: 2,
              color: Colors.grey,),


            SizedBox(height: 15,),
              ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                   scrollDirection: Axis.vertical,
                   itemCount: img.length,
                   shrinkWrap: true,
                   itemBuilder: (context,index){
                     return SettingsOptions(img: img[index],
                       title: Title[index],);
                   }
               ),


          ],
      ),
    ),
        )));
  }
}

class SettingsOptions extends StatefulWidget {
  SettingsOptions({this.img ,this.title });
  final String img;
  final String title;
  @override
  _SettingsOptionsState createState() => _SettingsOptionsState();
}

class _SettingsOptionsState extends State<SettingsOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
              height: 70,

          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFe1e3e6),
                offset: Offset(4,8),
                blurRadius: 50,
              ),
            ],
          ),
          child:Row(
            children: [
              SizedBox(width: 8,),
              Image.asset(widget.img , height: 30 , width: 30,),
              SizedBox(width: 8,),
              Text(widget.title)
            ],
          ),



        ),
        SizedBox(height: 5,)
      ],
    );
  }
}






