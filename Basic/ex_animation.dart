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


  void _incrementCounter() {
    setState(() {


    });
  }

  @override
  Widget build(BuildContext context) {

    var arrname=['Zohaib','Ahmad',"Hasseeb","Safwan","Taha","Ishaq"];
    return Scaffold(
      appBar: AppBar(

        title: Text("Practice"),
      ),
      body:
    ListView.separated(itemBuilder: (context,id)
    {
    return  ListTile(
leading: ElevatedButton(

  child:   CircleAvatar(
  
    backgroundImage:AssetImage("assets/images/firelogo.png"),
  
    backgroundColor: Colors.green,
  
  
  
  ),

  onPressed: (){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Sending Message"),
    ));
  },
),
        title:Text(arrname[id]) ,
        subtitle: Text("Message"),
        trailing: Icon(Icons.add ,color:Colors.red ,),
      );
    },
    itemCount: arrname.length,
      separatorBuilder: (context,id){
      return  Divider(height: 100,thickness: 2,color: Colors.white10,);

      },
    ),



    );
  }

}