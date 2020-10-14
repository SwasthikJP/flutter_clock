import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_controller.dart';

class Numberlinkedlist {
  LinkedList<Listentry> linkedList;
  Numberlinkedlist(){
  List<Listentry> list;
  list=List.generate(10,(index)=> Listentry(index));
  linkedList=LinkedList();
  linkedList.addFirst(Listentry(9));
  linkedList.addAll(list);
  }
Listentry getcontroller(int position){
  return linkedList.elementAt(position+1);
}
  
} 

class Listentry extends LinkedListEntry<Listentry>{
  String _assets;
  int number;
  Listentry(this.number){
    _assets='assets/$number.flr';
  }
  get assets{
    return _assets;
  }

}