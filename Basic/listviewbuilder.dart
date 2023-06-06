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
   var arrname=['Zohaib','Ahmad',"Hasseeb","Safwan","Taha","Ishaq"];
    return Scaffold(
        appBar: AppBar(

          title: Text("fluutter container"),
        ),
        body:
ListView.separated(itemBuilder: (context,index){    ///Builder
  return Text(arrname[index],style: TextStyle(fontSize: 23,color: Colors.red),);
},
itemCount: arrname.length,
separatorBuilder: (context,index){     ///only used in seperated list view
  return Divider(height: 11,thickness: 3,color: Colors.white,);
}

),



             );
  }

}