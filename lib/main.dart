import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Chat(),
  ));
}

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  var names = ['Person 1','Person 2','Person 3','Person 4'];
  var email = ['Email 1','Email 2','Email 3','Email 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131132),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chat',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        backgroundColor: Color(0xff131132),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 2,
              itemBuilder: (context,index){
                return Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        color: Color(0xff1D1D3E),
                          borderRadius: BorderRadius.circular(20),
//                          gradient: LinearGradient(
//                              colors: [Color(0xFFDADFF0),Colors.grey],
//                              begin: Alignment.bottomRight,
//                              end: Alignment.topLeft
//                          )
                      ),
                      child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.more_horiz,color: Colors.white,size: 30,),
                                    onPressed: (){
                                      showDialog(
                                          context: context,
                                          builder: (context){
                                            return SimpleDialog(
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child: Container(
                                                    child: Column(
                                                      children: <Widget>[
                                                        FlatButton(
                                                          child: Container(
                                                            height:50,
                                                              width:100,
                                                              child: Center(child: Text('Delete',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(15),
                                                              color: Colors.blue
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        FlatButton(
                                                          child: Container(
                                                            height:50,
                                                            width:100,
                                                            child: Center(child: Text('Edit',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(15),
                                                                color: Colors.blue
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            );
                                          }
                                      );
                                    },
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      height: 75,
                                      // width: MediaQuery.of(context).size.width-300,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                            colors: [Color(0xFFDADFF0),Colors.white],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage('images/profile.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(names[index],style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(email[index],style:GoogleFonts.lato(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),),
                                      SizedBox(
                                        height: 7,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                );
              }
          ),
      SizedBox(
        height: 30,
      ),
      Container(
          child: Row(
            children: <Widget>[
              SizedBox(width: 5),
              Flexible(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        maxLines: null,
                        style: TextStyle(color: Colors.black38, fontSize: 18),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type your message',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  )),
              Material(
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      child: new IconButton(
                        icon: new Icon(Icons.send),
                      )
                  ),
                  color: Colors.white)
            ],
          ),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              border:
              new Border(top: new BorderSide(color: Colors.grey, width: 0.5)),
              color: Colors.white))
        ],
      ),

    );
  }
}

