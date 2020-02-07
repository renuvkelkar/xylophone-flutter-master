import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound (int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildkey({Color color,int soundNumber,double size}){

   return Expanded(
      child: Container(
        child:FlatButton(
          child:
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(80.0),),
              color: Colors.black,
            ),
          ),
          onPressed: (){
            playsound(soundNumber);
          },
        ),
        margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(80.0),bottomRight: Radius.circular(80.0)),
          color:color,
        ),



      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              buildkey(color:Colors.red,soundNumber: 1, size:150.0),
              buildkey(color:Colors.orange,soundNumber: 2,size:180.0),
              buildkey(color:Colors.yellow,soundNumber: 3,size:210.0),
              buildkey(color:Colors.green,soundNumber: 4,size:240.0),
              buildkey(color:Colors.teal,soundNumber: 5,size:270.0),
              buildkey(color:Colors.blue,soundNumber: 6,size:300.0),
              buildkey(color:Colors.purple,soundNumber: 7,size:330.0),


            ],
          ),
        ),
      ),
    );
  }
}
