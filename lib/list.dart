import 'package:flutter/material.dart';

class Data extends ChangeNotifier{

  List<String> Imagedata=[
    'images/m.jpg',
    'images/m.jpg',
    'images/m.jpg',
    'images/m.jpg',
    'images/m.jpg',
    'images/m.jpg',
    'images/m.jpg',
    'images/m.jpg',
    'images/m.jpg',
  ];

  List<int> ImageValue=[
    0,0,0,0,0,0,0,0,0
  ];
  void setImageValue(int index,int value){
    ImageValue[index]=value;
    print('for $index value set is $value');
    setImage(index);
    notifyListeners();
  }

  String getValue(int index){
    return Imagedata[index];
  }

  void makeEmptyList(){
    Imagedata.clear();
    ImageValue.clear();
    for(int i=0;i<9;i++){
      ImageValue.add(0);
      Imagedata.add('images/m.jpg');
    }
    notifyListeners();
  }

  void setImage(int index){
    int indexValue=ImageValue[index];
    String replace;
    if(indexValue==0){
      replace='images/m.jpg';
    }
    else if(indexValue==1){
      replace='images/no.jpg';//cpu
    }
    else{
      replace='images/nx.jpg';//player
    }
    Imagedata[index]=replace;
    notifyListeners();
  }
}