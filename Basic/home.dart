import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(

        color: Colors.blue.shade100,
        child: Center(
          child:  Icon(Icons.home_filled,size: 100,color: Colors.blue,),
        ),
      ),

    );
  }
}