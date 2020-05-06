import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:math';
class onClick{

  BuildContext context;
  onClick(this.context);

    Set all=<int>{0,1,2,3,4,5,6,7,8};
    Set temp=<int>{};
    Set used=<int>{};
    Set p1=<int>{};
    Set p2=<int>{};
    bool cpu=false;
    bool fin=false;
    bool doubleValue=false;
    void click(int id){
      void refreshVariables(){
        all=<int>{0,1,2,3,4,5,6,7,8};
        temp.clear();
        used.clear();
        p1.clear();
        p2.clear();
        cpu=false;
        fin=false;
        doubleValue=false;
      }
      if(used.contains(id)==false && cpu==false){
        used.add(id);
        p1.add(id);
        print(p1);
//        list[id].setImage('images/nx.jpg');
//        Provider.of<Data>(context,listen: false).setImageValue(id, 1);//TODO
//      int l;
        if(check(p1)==false){
          cpu=true;
          if(used.length>=8){
            cpu=false;
            Provider.of<Data>(context,listen: false).makeEmptyList();
            refreshVariables();
            Alert(context: context, title: "Game Over", desc: "Tie").show();
          }


          if(cpu==true){
            temp=all.difference(used);
            int x=temp.length;
            Random r=new Random();
            x=temp.elementAt(r.nextInt(x));
            p2.add(x);
            print(p2);
            doubleValue=true;
            dualAction(id,x);
//            Provider.of<Data>(context,listen: false).setImageValue(id, 2);//TODO
            used.add(x);
            if(check(p2)==true){
              print("Cpu wins");
              Provider.of<Data>(context,listen: false).makeEmptyList();
              refreshVariables();
              Alert(context: context, title: "Game Over", desc: "CPU Wins").show();
            }
            cpu=false;

          }
          if(doubleValue==true){
            doubleValue=false;
          }
          else{
            if(temp.length!=0)
            singleAction(id);
          }
        }
        else{
          print("Player wins");
          Provider.of<Data>(context,listen: false).makeEmptyList();
          refreshVariables();
          Alert(context: context, title: "Game Over", desc: "You Win").show();
        }
      }
    }

    bool check(var p){
      if(p.contains(0) && p.contains(1) && p.contains(2)){
        return true;
      }
      else if(p.contains(3) && p.contains(4) && p.contains(5)) {
        return true;
      }
      else if(p.contains(2) && p.contains(4) && p.contains(6)) {
        return true;
      }
      else if(p.contains(6) && p.contains(7) && p.contains(8)) {
        return true;
      }
      else if(p.contains(0) && p.contains(3) && p.contains(6)) {
        return true;
      }
      else if(p.contains(1) && p.contains(4) && p.contains(7)) {
        return true;
      }
      else if(p.contains(2) && p.contains(5) && p.contains(8)) {
        return true;
      }
      else if((p.contains(0) && p.contains(4) && p.contains(8))) {
        return true;
      }
      else{
        return false;
      }
    }




  void singleAction(int id){
    Provider.of<Data>(context,listen: false).setImageValue(id, 1);
  }


  void dualAction(int id,int x){
    Provider.of<Data>(context,listen: false).setImageValue(id, 1);
    Provider.of<Data>(context,listen: false).setImageValue(x, 2);
  }



}
