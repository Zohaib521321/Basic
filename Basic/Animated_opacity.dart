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
  double opacity=1.0;
var flag;
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
                AnimatedOpacity(
                  opacity: opacity,
                  duration: Duration(seconds: 2),

curve: Curves.bounceInOut,
                  child: Container(
  width: 100,
  height: 100,
  color: Colors.yellow,
),

                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                   if (flag==true) {
                     opacity=0.0;
flag=false;
                   }
                   else{
                     opacity=1.0;
                     flag=true;
                   }

                  });

                }, child: Text("close"))
              ],
            )

    );
  }

}