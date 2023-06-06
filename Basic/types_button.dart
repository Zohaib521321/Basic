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

        body:OutlinedButton(

          child: Text("Click me"),

          onPressed: (){
            print("Zohaib");
          },
          onLongPress: (){
            print("Muhammad Zohaib");
          },
        )
        // ElevatedButton(
        //   child: Text("Click me"),
        //   onPressed: (){
        //     print("Zohaib");
        //   },
        //   onLongPress: (){
        //     print("Muhammad Zohaib");
        //   },
        // )
      //   TextButton(
      //     child: Text("Click me"),
      // onPressed: (){
      //       print("Pressed!!");
      // },
      //     onLongPress: (){
      //       print("LOng pressed!");
      //     },
      //   )

    );
  }

}