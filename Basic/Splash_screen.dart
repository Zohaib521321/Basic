import 'dart:async';
import 'onescree_otherscreen.dart';
import 'stateless_statefull_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
  Timer(Duration(seconds: 4),(){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
FirstScreen(),
));
  });
  }
    @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(

       color: Colors.blue.shade100,
     child: Center(
       child: CircleAvatar(
         backgroundImage: AssetImage("assets/images/zb.jpg"),
       ),
     ),
     ),
   );
    }
}