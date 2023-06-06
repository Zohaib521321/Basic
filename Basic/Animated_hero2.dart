import 'package:flutter/cupertino.dart';

class animation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Hero(
      tag: "background",
     child: Image.asset("assets/images/zb.jpg"),
    );
  }

}