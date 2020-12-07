import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  List <String> Img = [
    "img/pk.jpg",
    "img/mb.jpg",
    "img/aa.jpg",
    "img/rc.jpg",
    "img/pk.jpg",
    "img/mb.jpg",
    "img/aa.jpg" ,
    "img/rc.jpg", "img/pk.jpg",
    "img/mb.jpg",
    "img/aa.jpg",
    "img/rc.jpg",
    "img/pk.jpg",
    "img/mb.jpg",
    "img/aa.jpg" ,
    "img/rc.jpg",
  ];
  List <String> Id = [
    "Pawan kalyan ",
    "Mahesh Babu",
    "Allu Arjun ",
    "Ram Charan", "Pawan kalyan ",
    "Mahesh Babu",
    "Allu Arjun ",
    "Ram Charan",
"Pawan kalyan ",
    "Mahesh Babu",
    "Allu Arjun ",
    "Ram Charan","Pawan kalyan ",
    "Mahesh Babu",
    "Allu Arjun ",
    "Ram Charan",

  ];
  List <String> title = [
    "add u in group Janasena Soliders  ",
    "comment in ur post ",
    "sent u friend request  , click here to response  ",
    "want to msg u  , click here to rply",  "add u in group Janasena Soliders  ",
    "comment in ur post ",
    "sent u friend request  , click here to response  ",
    "want to msg u  , click here to rply",  "add u in group Janasena Soliders  ",
    "comment in ur post ",
    "sent u friend request  , click here to response  ",
    "want to msg u  , click here to rply", "add u in group Janasena Soliders  ",
    "comment in ur post ",
    "sent u friend request  , click here to response  ",
    "want to msg u  , click here to rply",
  ];
  List <String> Time = [
    "1 hour ago ",
    "2 hour ago",
    "3hour ago ",
    "1 day ago", "1 hour ago ",
    "2 hour ago",
    "3hour ago ",
    "1 day ago","1 hour ago ",
    "2 hour ago",
    "3hour ago ",
    "1 day ago", "1 hour ago ",
    "2 hour ago",
    "3hour ago ",
    "1 day ago",
  ];
List <Color> clrs = [

   Color(0xFFc9ccd3),Color(0xFFc9ccd3),Color(0xFFc9ccd3),Colors.white,Color(0xFFc9ccd3),Color(0xFFc9ccd3),Color(0xFFc9ccd3), Colors.white,  Colors.white, Colors.white,
  Color(0xFFc9ccd3),Color(0xFFc9ccd3),Color(0xFFc9ccd3),Colors.white ,Color(0xFFc9ccd3),
  Colors.white ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      margin: EdgeInsets.only(left: 10, right: 10 , ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only( top: 5, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications " , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
                CircleAvatar(
                  backgroundColor: Color(0xFFe4e6eb),
                  radius: 18,
                  child: Icon(Icons.search , color: Colors.black,),
                ),

              ],),
          ),





          Expanded(
            child: Container(


              child: ListView.builder(

                  shrinkWrap: true,
                  itemCount: Id.length ,
                  itemBuilder: (context ,index){
                    return Notifaction (
                      id: Id[index],
                      text: title[index],
                      time: Time[index],
                      img: Img[index],
                      clr: clrs[index],
                    );
                  }
              ),
            ),
          ),

        ],
      ),
    ));
  }
}

class Notifaction extends StatefulWidget {
  Notifaction({  this.img , this.id , this.text , this.time , this.clr});
  final String img;final String time;
  final String id;
  final String text;
  final Color clr;
  @override
  _NotifactionState createState() => _NotifactionState();
}

class _NotifactionState extends State<Notifaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
       color: widget.clr,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage:  AssetImage(widget.img),
                radius: 25,
              ),
              SizedBox(width: 7,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(

                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(text: widget.id, style: TextStyle( fontSize: 16   ,fontWeight: FontWeight.bold)),

                                TextSpan(text: widget.text),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(widget.time , style: TextStyle(color: Colors.grey , fontSize: 10),)
                  ],
                ),
              ),
              SizedBox(width: 6,),
              Icon(Icons.more_horiz)
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}

