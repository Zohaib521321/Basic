import 'dart:async';
import 'home.dart';
import 'signup_login.dart';
import 'stateless_statefull_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen1 extends StatefulWidget{
  @override
  State<SplashScreen1> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1> {
  @override
  void initState() {

    super.initState();
  Wheretogo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child:  Icon(Icons.home_filled,size: 100,color: Colors.blue,),
        ),
      ),
    );
  }
}


void Wheretogo() async{
  var  shared=await SharedPreferences.getInstance();
  var login=shared.getBool("login");
  Timer(Duration(seconds: 2),(){

    // if (login!=null) {
    //   if (login) {
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
    //         Home()));
    //   }
    //   else{
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
    //         MyHomePage1(title: "Name")));
    // }
    //
    //
    // }
    // else{
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
    //       MyHomePage1(title: "Name")));
    // }
  });
}