import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  var namecontroller=TextEditingController();
  var name="No value saved";
@override
  void initState() {
    // TODO: implement initState
  super.initState();
    simple();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("fluutter container"),
        ),
        body:
Center(
  child:   Container(

    width: 300,

  child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextFormField(
        controller: namecontroller,
      decoration: InputDecoration(
label: Text("enter name"),
  ),
      ),
    SizedBox(
      height: 22,
    ),
      ElevatedButton(onPressed: ()async{
var  name=namecontroller.text.toString();
var prefence=await SharedPreferences.getInstance();
prefence.setString("name", name);
      }, child:Text("Save")),
      SizedBox(
        height: 22,
      ),
      Text(name)
      
    ],
  ),

  ),
)
    );
  }

  void simple() async{
var prefence=await SharedPreferences.getInstance();
var getName=prefence.getString("name");

name=getName ?? name;
setState(() {

});
}
}