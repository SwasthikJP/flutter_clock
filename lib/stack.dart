import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_clock_2/controller.dart';
import 'package:flutter_clock_2/linkedlist.dart';
import 'package:intl/intl.dart';

class Digitanimation extends StatelessWidget {
final Size size;
final Listentry number;


  Digitanimation(this.size,this.number);
  @override
  Widget build(BuildContext context) {
    return   Container(height: size.height,width: size.width*0.25,child:
    Stack(children: <Widget>[
    
 FlareActor(number.assets,controller: Controller(animation.show)),
 FlareActor(number.previous.assets,controller: Controller(animation.hide),)
    ],));
   
  }
}