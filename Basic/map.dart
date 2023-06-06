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
var data=[{
  "name":"Zohaib",
  "mobno":"03424627786",
"adress":"DGK",
},
  {
    "name":"Zohaib",
    "mobno":"03424627786",
    "adress":"DGK"
  },
  {
    "name":"Zohaib",
    "mobno":"03424627786",
    "adress":"DGK"
  },
  {
    "name":"Zohaib",
    "mobno":"03424627786",
    "adress":"DGK"
  },
];
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
  child:   ListView(

    itemExtent: 200,

    children:data.map((value) =>

        ListTile(

          leading: Icon(Icons.account_box_rounded),
           title: Text(value["name"].toString()),
          subtitle:  Text(value["mobno"].toString()),
          trailing: Text(value["adress"].toString()) ,


        )

        ).toList(),


)
    ),




    );
  }

}