
import 'onescree_otherscreen.dart';
import 'Splash_screen.dart';
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
      home:SplashScreen(),
    );
  }}
class FirstScreen extends StatefulWidget{


  @override
  State<StatefulWidget> createState() => myhomestate();

}
class myhomestate extends State<FirstScreen>{

  var count=0;
  var  _controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // counter(){
    //   setState(() {
    //     count++;
    //   });
    // }
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
            ),
            ElevatedButton(onPressed: (){
  Navigator.push(context,MaterialPageRoute(builder: (context)=> SecondScreen(_controller.text.toString())));
            }, child: Text("Profile")
            // Text("Count=$count"),



    )

    ]
    )));


  }

}