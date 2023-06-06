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


    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        title: Text("Custom widget"),
      ),
      body:
    Column(
      children: [
        catitem1(),
   catitem2(),
       catitem3(),
        catitem4(),
      catitem5()
      ],
    )



    );
  }

}
class catitem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.lightGreen,
        child: ListView.builder(itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: SizedBox(
                width: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          itemCount: 10, scrollDirection: Axis.horizontal,


        ),

      ),
    );
  }
}

class catitem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Expanded(
      flex: 4,
      child:
      Container(
        color: Colors.greenAccent,
        child: ListView.builder(itemBuilder: (context,index)=>
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,

                ),
                title: Text("Name"),
                subtitle: Text("Mobile Number"),
                trailing: Icon(Icons.delete),
              ),
            ),
          itemCount: 10, scrollDirection: Axis.vertical,
        ),
      ),);
  }
}
class catitem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Expanded(
      flex: 2,
      child: Container(
        color: Colors.lightGreen,
        child: ListView.builder(itemBuilder: (context,index)=>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            ),
          itemCount: 10,scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
class catitem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Expanded(
      flex: 4,
      child: Container(
        color: Colors.lightGreen,
        child: ListView.builder(itemBuilder: (context,index)=>
            Container(

              color: Colors.green,
            ),
          itemCount: 10,scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
class catitem5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return   Expanded(
  flex: 2,
  child: Container(
    color: Colors.lightGreen,
    child: ListView.builder(itemBuilder: (context,index)=>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 300,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
      itemCount: 10,scrollDirection: Axis.horizontal,
    ),
  ),
);
  }
}
