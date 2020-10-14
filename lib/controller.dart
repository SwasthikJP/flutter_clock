import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_controller.dart';
enum animation{hide,show}
class Controller extends FlareController{
  ActorAnimation _in;
  ActorAnimation _out;
  FlareController controller;
 animation state;
 double animationtime;
Controller(this.state);
@override
 void initialize(FlutterActorArtboard flutterActorArtboard){
   animationtime=0;
_in=flutterActorArtboard.getAnimation('in');
_out=flutterActorArtboard.getAnimation('out');
}
@override
 bool advance(FlutterActorArtboard flutterActorArtboard,double elapsed){
animationtime+=elapsed;
   switch (state) {
     case animation.show:
       _in.apply((_in.duration*animationtime*0.5)-2, flutterActorArtboard,1);
    //   print('in ${_in.duration*elapsed}');
       break;
     case animation.hide:
     _out.apply(_out.duration*animationtime*0.5, flutterActorArtboard, 1);
   //  print('out ${elapsed*_out.duration}');
     break;
     default:
     print('error');
   }
return true;
 }
@override
void setViewTransform(mat2d){

}
} 