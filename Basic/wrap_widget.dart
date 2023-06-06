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

          title: Text("fluutter"),
        ),
        body:
Wrap(
  direction: Axis.horizontal,
  alignment: WrapAlignment.spaceBetween,
  spacing: 11,
  runSpacing: 12,
  children: [
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.black54,
    ),
    Container(
      width: 40,
        height: 40,
      color: Colors.grey
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.amber,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.white54,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.black54,
    ),
    Container(
        width: 40,
        height: 40,
        color: Colors.grey
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.amber,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.white54,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.black54,
    ),
    Container(
        width: 40,
        height: 40,
        color: Colors.grey
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.amber,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.white54,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.black54,
    ),
    Container(
        width: 40,
        height: 40,
        color: Colors.grey
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.amber,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.white54,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.black54,
    ),
    Container(
        width: 40,
        height: 40,
        color: Colors.grey
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.amber,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.white54,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.black54,
    ),
    Container(
        width: 40,
        height: 40,
        color: Colors.grey
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.amber,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.redAccent,
    ),
    Container(
      width: 40,
      height: 40,
      color: Colors.white54,
    ),
  ],
)

    );
  }

}