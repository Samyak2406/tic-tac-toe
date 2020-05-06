import 'package:flutter/material.dart';
import 'package:ticktacktoey/list.dart';
import 'screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Data(),
      child: MaterialApp(
        home: screen(),
      ),
    );
  }
}