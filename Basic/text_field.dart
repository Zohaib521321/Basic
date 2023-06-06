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
        body:
    Center( child:Container(
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(

            decoration: InputDecoration(

              focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
        borderSide: BorderSide(
            color: Colors.red,
          width: 2,

        ) ,

              ),
        enabledBorder:OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.green,
          width: 0,

        )
            ),
          ),
          ),
          Container(
            margin:  EdgeInsets.all(15),
            width: 350,
            child: TextField(
              // keyboardType: TextInputType.name, change the key board
// enabled: false, it disable field

              decoration: InputDecoration(

                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    color: Colors.black26,
                    width: 2,

                  ) ,

                ),

                enabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0,

                    )
                ),


              suffixText:"Enter name",
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: (){

                  },
                )

              ),
            ),
          ),
        ],
      ),
    )
    )

    );
  }

}