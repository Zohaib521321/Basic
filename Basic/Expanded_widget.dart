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

          title: Text("flutter container"),
        ),
        body:
    Row(
    children: [
      Expanded(flex: 2, child: Text("Zohaib",style: TextStyle(color: Colors.red,fontSize: 23),)),
    Text("Zohaib",style: TextStyle(color: Colors.green,fontSize: 27),),
    Text("Zohaib",style: TextStyle(color: Colors.cyanAccent,fontSize: 21),),
     Text("Zohaib",style: TextStyle(color: Colors.grey,fontSize: 20),),
     Text("Zohaib",style: TextStyle(color: Colors.pinkAccent,fontSize: 29),),
        Text("Zohaib",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 33),),

    ],
    )
    );
  }

}