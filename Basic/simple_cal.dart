import 'package:flutter/material.dart';
import 'dart:math';
import 'package:form_field_validator/form_field_validator.dart';
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

        primarySwatch: Colors.deepOrange,
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
var no1controller=TextEditingController();
var no2controller=TextEditingController();
var result="";

final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("Simple calculator"),
        ),
        body:
      Container(
        color: Colors.blue.shade100,

        child: Form(
          key: _formKey,

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextFormField(
autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: MultiValidator(
                    [
                      RequiredValidator(errorText: "Please enter value")
                    ]
                  ),
                  decoration: InputDecoration(
                    label:Text( "Enter any value to perform action"),

                  ),

                  keyboardType: TextInputType.number,

                  controller: no1controller,

                ),
                TextFormField(

                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: MultiValidator(
                      [
                        RequiredValidator(errorText: "Please enter value")
                      ]
                  ),
                  decoration: InputDecoration(
                    label:Text( "Enter any value to perform action"),

                  ),

                  keyboardType: TextInputType.number,

                  controller: no2controller,
                ),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: '$result',
                labelStyle: TextStyle(fontSize: 23,fontWeight: FontWeight.w200,color: Colors.purple)
              ),),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1controller.text.toString());
                        var  no2=int.parse(no2controller.text.toString());
                        var sum=(no1+no2);
                         result=("= $sum");
                        setState(() {

                        });
                      }, child: Text("Add")),
                      ElevatedButton(onPressed: (){
var no1=int.parse(no1controller.text.toString());
var  no2=int.parse(no2controller.text.toString());
var subtract=(no1-no2);
 result=("= $subtract");
setState(() {

});
                      }, child: Text("subtract")),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1controller.text.toString());
                        var  no2=int.parse(no2controller.text.toString());
                        var Multiply=(no1*no2);
                         result=("= $Multiply");
                        setState(() {

                        });
                      }, child: Text("Multiply")),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1controller.text.toString());
                        var  no2=int.parse(no2controller.text.toString());
                        var Divide=(no1/no2);
                         result=("= $Divide");
                        setState(() {

                        });
                      }, child: Text("Divide")),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(no1controller.text.toString());
                        var  no2=int.parse(no2controller.text.toString());
                        var ex=(no1%no2);
                        result=("= $ex");
                        setState(() {

                        });
                      }, child: Text("Modulus")),
                    ],
                  ),
                ),
// Padding(
//   padding: const EdgeInsets.all(21.0),
//   child:   Text(result,style: TextStyle(fontWeight: FontWeight.w100,color: Colors.red,fontSize: 23),),
// ),
              ],
            ),
          ),
        ),
      )

    );
  }

}