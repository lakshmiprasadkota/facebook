import 'package:facebook/groupstabar/mainpage.dart';
import 'package:flutter/material.dart';
class GroupPage extends StatefulWidget {

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {

  List <String> imglist = [

    "img/following.png",
    "img/save.png",
    "img/food.png",
    "img/live.png" ,
    "img/gaming.png",
    "img/music.png" ,

  ];
  List <String> Titlelist = ["Following" , "Saved" , "Food" , "Live"  , "Gaming" ,"Music"];



  List <String> Simglist = [

    "img/oyypoti.jpg",
    "img/nasa.png",
    "img/ramcharan.jpg",
    "img/tata.jpeg" ,
    "img/tiger.jpg",
    "img/pk.jpg" ,

  ];


  List <String> Stitlelist = ["Oyy Potti ninu yee" , "NASA" , "Rc Fans Assocation " , "TATA Techo"  , "Animals LoverS.." ,"P S P K \nDie-Hard FAns"];

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
                  Text("Groups" , style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black ,fontSize: 20),),
                  CircleAvatar(
                    backgroundColor:  Color(0xFFe4e6eb),
                    radius: 17,
                    child: Icon(Icons.search , color: Colors.black,),
                  )
                ],),
            ),

            Container(
              height: 50,
              width: 400,
              margin: EdgeInsets.only(left: 10 ),
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

            SizedBox(height: 20,),

            Container(
              height: 120,
              margin: EdgeInsets.only(left: 10 ),

              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Simglist.length ,
                  itemBuilder: (context ,index){
                    return SuggestionGroups (Simg: Simglist[index],
                      Stitle: Stitlelist[index],
                    );
                  }
              ),
            ),

            Container(
              height: 10,
              color: Color(0xFFc9ccd3),
            ),

            MyWidget(),










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
        SizedBox(width: 10,),

      ],
    );
  }
}



class SuggestionGroups extends StatefulWidget {
  SuggestionGroups({this.Simg , this.Stitle });
  final String Simg;
  final String Stitle ;

  @override
  _SuggestionGroupsState createState() => _SuggestionGroupsState();
}

class _SuggestionGroupsState extends State<SuggestionGroups> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container (child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(widget.Simg , height: 90, width: 150,))),
              Text(widget.Stitle , style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),)
            ],
          ),

        ],),
    );
  }
}





