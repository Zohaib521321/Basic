import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
Container(
  width: 300,
  child:   Stack(
    children: [
      Positioned(
        right: 50,

        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      Container(
        width: 60,
        height: 60,
        color: Colors.deepPurple,
      ),
      Container(
        width: 50,
        height: 50,
        color: Colors.indigo,
      )

    ],
  ),
)
    );
  }

}