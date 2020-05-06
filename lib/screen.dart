import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'list.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'onClick.dart';
//Data data=Data();


class screen extends StatefulWidget {

  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {


    onClick o=onClick(context);


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  myImage(0,(){o.click(0);}),
                  myImage(3,(){o.click(3);}),
                  myImage(6,(){o.click(6);})
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  myImage(1,(){o.click(1);}),
                  myImage(4,(){o.click(4);}),
                  myImage(7,(){o.click(7);})
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  myImage(2,(){o.click(2);}),
                  myImage(5,(){o.click(5);}),
                  myImage(8,(){o.click(8);})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class myImage extends StatelessWidget {
  Function CallbackFunction;
  final index;
  myImage(this.index,this.CallbackFunction);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Image.asset(Provider.of<Data>(context).getValue(index)),//Provider.of<Image>(context).getValue(index)
        onTap: CallbackFunction,
      ),
    );
  }
}