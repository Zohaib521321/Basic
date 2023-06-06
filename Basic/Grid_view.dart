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
            Column(
children: [
    GridView.count(crossAxisCount: 7,
    crossAxisSpacing: 18,
    mainAxisSpacing: 18,
    children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(color: Colors.black,),
    ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(color: Colors.indigo,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(color: Colors.orange,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(color: Colors.black,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(color: Colors.deepPurple),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(color: Colors.pinkAccent),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(color: Colors.lightGreen),
      ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.lime),),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.deepPurple),),
      ],
    ),
Container(
  height: 200,
),
GridView.extent(maxCrossAxisExtent: 200,     ////also use gridview builder

children: [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.black,),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.indigo,),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.orange,),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.black,),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.deepPurple),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.pinkAccent),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.lightGreen),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.lime),),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(color: Colors.deepPurple),),
],
)
  // GridView.builder( itemBuilder: (context,index)
  // {
  //
  //   spacin
  //   count
  //   for api
  // }

],
    ));
  }

}