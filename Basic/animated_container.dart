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

class _MyHomePageState extends State<MyHomePage> {
var width=200.0;
var hieght=200.0;
var bgcolor=Colors.grey.shade300;
Decoration decoration=BoxDecoration(
  borderRadius: BorderRadius.circular(20),
    color: Colors.yellowAccent
);

bool    flag=true;

void _incrementCounter() {
    setState(() {


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("fluutter container"),
        ),
        body:
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            width: width,
            height:hieght,
curve: Curves.slowMiddle,
            duration: Duration(seconds: 2),
decoration: decoration,

          ),
          ElevatedButton(onPressed: (){
setState(() {
 if (flag==true) {
   width=200.0;
   hieght=200.0;

   flag=false;


 decoration=BoxDecoration(
   borderRadius: BorderRadius.circular(100),
   color: Colors.yellow,

 );
 }
 else{
   width=200.0;
   hieght=200.0;
   flag=true;

   decoration=BoxDecoration(
       borderRadius: BorderRadius.circular(20),
     color: Colors.yellow.shade100,

   );

 }


});

          }, child: Text("Animate"))
        ],
      ),
    )

    );
  }

}