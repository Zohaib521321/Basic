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
    ListView(
      scrollDirection: Axis.vertical,
      reverse: false, //True for reverse list
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Zohaib",style: TextStyle(fontSize: 34,color: Colors.green,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Zohaib",style: TextStyle(fontSize: 34,color: Colors.black54,fontWeight: FontWeight.bold),),
        ),

    Padding(
    padding: const EdgeInsets.all(8.0),
      child:   Text("Zohaib",style: TextStyle(fontSize: 34,color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
      child: Text("Zohaib",style: TextStyle(fontSize: 34,color: Colors.white10,fontWeight: FontWeight.bold),),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
      child: Text("Zohaib",style: TextStyle(fontSize: 34,color: Colors.orange,fontWeight: FontWeight.bold),),

    ),
      ],
    )
    );
  }

}