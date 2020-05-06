//import 'package:flutter/material.dart';
//
//import 'dart:math';
//import 'package:flutter/cupertino.dart';
//import 'main.dart' as main;
//import 'main.dart';
//class brain{
//  Set all=<int>{0,1,2,3,4,5,6,7,8};
//  Set temp=<int>{};
//  Set used=<int>{};
//  Set p1=<int>{};
//  Set p2=<int>{};
//  bool cpu=false;
//  bool fin=false;
//  String click(int id){
//
//    if(used.contains(id)==false && cpu==false){
//      used.add(id);
//      p1.add(id);
//      print(p1);
//      list[id].setImage('images/nx.jpg');
////      int l;
//      if(check(p1)==false){
//        cpu=true;
//        if(used.length>=8){
//          cpu=false;
//          refresh();
//        }
//
//
//        if(cpu==true){
//          temp=all.difference(used);
//          int x=temp.length;
//          Random r=new Random();
//          x=temp.elementAt(r.nextInt(x));
//          p2.add(x);
//          print(p2);
//          list[x].setImage('images/no.jpg');
//          used.add(x);
//          if(check(p2)==true){
//            print("Cpu wins");
//            refresh();
//          }
//          cpu=false;
//        }
//      }
//      else{
//        print("Player wins");
//        refresh();
//      }
//    }
//  }
//
//  bool check(var p){
//    if(p.contains(0) && p.contains(1) && p.contains(2)){
//      return true;
//    }
//    else if(p.contains(3) && p.contains(4) && p.contains(5)) {
//      return true;
//    }
//    else if(p.contains(6) && p.contains(7) && p.contains(8)) {
//      return true;
//    }
//    else if(p.contains(0) && p.contains(3) && p.contains(6)) {
//      return true;
//    }
//    else if(p.contains(1) && p.contains(4) && p.contains(7)) {
//      return true;
//    }
//    else if(p.contains(2) && p.contains(5) && p.contains(8)) {
//      return true;
//    }
//    else if((p.contains(0) && p.contains(4) && p.contains(8))||(p.contains(0) && p.contains(4) && p.contains(8))) {
//      return true;
//    }
//    else{
//      return false;
//    }
//  }
//  void refresh(){
//    for(int i=0;i<9;i++){
////      var q=main.list[i];
////    print('refreshed');
//      //TODO main.list[i].setImage('images/m.jpg');
//    }
//    used={};
//    p1={};
//    temp={};
//    p2={};
//  }
//
//
//}