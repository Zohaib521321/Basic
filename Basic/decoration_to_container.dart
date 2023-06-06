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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
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
      child: Container(
        color: Colors.white12,
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red,
            // borderRadius: BorderRadius.circular(75),   circular shape
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(12)),
            border: Border.all(
              color: Colors.green,
              width: 4
            ),
              boxShadow: [
                BoxShadow(
                  blurRadius:  11,
                  spreadRadius:9,
                  color: Colors.white
                )
              ]
              ,
            // shape:BoxShape.circle  //shape
          ),

        ),

      ),
    )
    );
  }

}