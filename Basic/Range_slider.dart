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

  RangeValues values=RangeValues(0, 100);


  @override
  Widget build(BuildContext context) {
   RangeLabels labels=RangeLabels(values.toString(), values.toString());
    return Scaffold(
        appBar: AppBar(

          title: Text("fluutter container"),
        ),
        body:
    RangeSlider(
        values:values,
      labels: labels,

      divisions: 10,
      min: 0,
      max: 100,
      activeColor: Colors.brown,
      inactiveColor: Colors.brown.shade100,

      onChanged: (newValue){
values=newValue;

setState(() {
  print("You selected ${newValue.start} , ${newValue.end}");
});
      }

    )

    );
  }

}