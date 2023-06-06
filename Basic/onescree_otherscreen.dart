import 'onescree_otherscreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
var firstscreen;
SecondScreen(this.firstscreen);


    @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    children: [

      Text("welcome,$firstscreen")

    ],
  ),
);

  }
}
