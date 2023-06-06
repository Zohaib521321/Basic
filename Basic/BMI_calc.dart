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
      home: const MyHomePage(title: "BMI calculator",),
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
  var wtcontroller=TextEditingController();
  var ftcontroller=TextEditingController();
  var incontroller=TextEditingController();
var result="";
  var bgcolor=Colors.purple.shade200;
  double _scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("BMI Calculator"),
        ),
        body:
        Container(
          color: bgcolor,
          child: Center(
            child: GestureDetector(
              onScaleUpdate: (ScaleUpdateDetails details) {
                setState(() {
                  _scale *= details.scale;
                });
              },
              child: Transform(
                transform: Matrix4.diagonal3Values(_scale, _scale, 1.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("BMI",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                    SizedBox(height: 19,),
                    TextField(
                      controller: wtcontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("Enter your weight in (Kg)"),
                      prefixIcon: Icon(Icons.line_weight)),
                    ),
                    SizedBox(height: 19,),
                    TextField(
                      controller: ftcontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          label: Text("Enter your Hieght in (feet)"),
                          prefixIcon: Icon(Icons.height)),
                    ),
                    SizedBox(height: 19,),
                    TextField(
                      controller: incontroller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          label: Text("Enter your Hieght in (inch)"),
                          prefixIcon: Icon(Icons.height)),
                    ),
                    SizedBox(height: 19,),
                    ElevatedButton(onPressed: (){

                      var wt=wtcontroller.text.toString();
                      var ft=ftcontroller.text.toString();
                      var inc=incontroller.text.toString();
                      if(wt!="" && ft!="" && inc!=""){
                    var iwt=int.parse(wt);
                    var ift=int.parse(ft);
                    var iin=int.parse(inc);
var msg="";

                    var tch=(ift*12)+iin;
                    var cm=tch*2.54;
                    var MM=cm/100;
                    var BMI=iwt/(MM*MM);
                    if (BMI>25) {
                      msg="You are overwieghted";
                      bgcolor=Colors.red.shade200;
                    }
                    else if (BMI<17) {
                      msg="You are underwieghted";
                      bgcolor=Colors.red.shade100;
                    }   else() {
                      msg="You are healthy";
                      bgcolor=Colors.blue.shade200;
                    };

                    setState(() {
                      result="$msg \n Your BMI is ${BMI.toStringAsFixed(3)}";
                    });
                      }

else{
setState(() {
  result="Please enter all fields";
});
                      }

                    }, child: Text("Calculate")),
                    Text(result ,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w100,color: Colors.blue.shade300),),
                  ],
                ),
              ),
            ),
          ),
        )

    );
  }

}