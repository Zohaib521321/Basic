import 'Splash.dart';
import 'home.dart';
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
      home: SplashScreen1(),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("fluutter container"),
        ),
        body:
        Center(
          child: Column(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_box_rounded,size: 100,),
              SizedBox(height: 15,),
              Container(
                width: 300,
                child: TextFormField(
   decoration: InputDecoration(
label: Text("Name"),
       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(11),
           borderSide: BorderSide(
             color: Colors.red,
             width: 2,

           )
       )

   ),

                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 300,
                child: TextFormField(

                  decoration: InputDecoration(
label:Text("Number"),
border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(11),
    borderSide: BorderSide(
      color: Colors.red,
      width: 2,

    )
)
                  ),

                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: ()async{
                var pre=await SharedPreferences.getInstance();
             var get=pre.setBool("login", true);
Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }, child:Text("Login"))
            ],
          ),
        )

    );
  }

}