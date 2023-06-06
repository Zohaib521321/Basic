import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation coloranimation;
  late AnimationController animationController;

  @override
  void initState() {
animationController=AnimationController(vsync: this,duration: Duration(seconds: 10),);
    animation=Tween(begin:0.0,end:200.0).animate(animationController);
    coloranimation=ColorTween(begin: Colors.blue,end:Colors.orange).animate(animationController);
    animationController.addListener(() {
   print(animation.value);
   setState(() {

   });
    });
    animationController.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("fluutter container"),
        ),
        body:Center(
          child: Container(
            width: animation.value,
            height: animation.value,
            color: coloranimation.value,
          ),
        )
    //     TweenAnimationBuilder(
    // tween: Tween<double>(begin: 0, end: 100),
    // duration: Duration(seconds: 5),
    // curve: Curves.easeInOut,
    // builder: (context, value, child) {
    // return Container(
    // width: value,
    // height: value,
    // color: Colors.black,
    // );
    // },
    // child: Text('Animated Container'),
    // )
       );
  }

}