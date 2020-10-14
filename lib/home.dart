import 'dart:async';

import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_clock_2/linkedlist.dart';
import 'package:flutter_clock_2/stack.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Size size;
  FlareControls flareControls;
DateTime time;
Timer timer;
Numberlinkedlist numberlinkedlist;

  @override
  void initState() {
updatetime();
    super.initState();
  }

void updatetime(){
  setState(() {
    time=DateTime.now();
    print(time.second);
   timer=Timer(Duration(seconds:1)-Duration(milliseconds: time.millisecond), updatetime);
  });
   
}
  @override
 Widget build(BuildContext context) {

numberlinkedlist=Numberlinkedlist();

 var hour=DateFormat('HH').format(time);
 var min=DateFormat('mm').format(time);
var hour1=int.parse(hour[0]);
var hour2=int.parse(hour[1]);
var min1=int.parse(min[0]);
var min2=int.parse(min[1]);

size=MediaQuery.of(context).size;
SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,
DeviceOrientation.landscapeRight]);

Listentry hour1class=numberlinkedlist.getcontroller(hour1); 
Listentry hour2class=numberlinkedlist.getcontroller(hour2); 
Listentry min1class=numberlinkedlist.getcontroller(min1); 
Listentry min2class=numberlinkedlist.getcontroller(min2);        
 return Scaffold(
      body: Stack(overflow: Overflow.visible,children: <Widget>[
       
        Positioned(left: size.width*0,right: size.width*0.700,top:0,bottom: 0, child://0.715
        Digitanimation(size, hour1class)
       // Container(height: size.height,width: size.width*0.25,
      //  child:// FlareActor('assets/6.flr',animation:'in'),
      ),
        Positioned(left: size.width*0.2,right: size.width*0.50,top:0,bottom: 0,child:
              Digitanimation(size, hour2class)
      //   Container(height: size.height,width: size.width*0.25,
     //   child: FlareActor('assets/3.flr',animation:'in'),),
     ),
        Positioned(left: size.width*0.485,right: size.width*0.485,top:0,bottom: 0,child:
        Container(height: size.height,width: size.width*0.10,
       child: FlareActor('assets/dots.flr',animation: 'in',)),
     ),
        Positioned(left: size.width*0.5,right:size.width*0.2,top:0,bottom: 0,child:
    //     Container(height: size.height,width: size.width*0.25,
     //   child: FlareActor('assets/4.flr',animation:'in'),),
           Digitanimation(size, min1class)
     ),
        Positioned(left: size.width*0.7,right:size.width*0,top:0,bottom: 0,child:
      //   Container(height: size.height,width: size.width*0.25,
      //  child: FlareActor('assets/3.flr',animation:'in'),),
            Digitanimation(size, min2class)
      ),
       Positioned(left:0,right:0,bottom:size.height*0.065,top:size.height*0.065,child:
        Container(child: 
        FlareActor('assets/boards.flr'),)),
      ],),
    );
  }
}