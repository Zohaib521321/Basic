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
  bool _obscureText = true;
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
        Center(


            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: 300,
margin: EdgeInsets.all(7.0),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    TextField(
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.red,


                      toolbarOptions: ToolbarOptions(copy: false,cut: false,paste: false,selectAll: false),
                      decoration: InputDecoration(
                        labelText: "Enter name",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 28,
                        ),

                        hintText: "name",
                        hintStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 23,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,


                          ),
                          borderRadius: BorderRadius.circular(10),                  ),
prefixIcon: Icon(Icons.person)
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.red,



                      toolbarOptions: ToolbarOptions(copy: false,cut: false,paste: false,selectAll: false),
                      decoration: InputDecoration(
                        labelText: "Enter Last name",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                        ),

                        hintText: "Last name",
                        hintStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 23,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,


                          ),
                          borderRadius: BorderRadius.circular(10),                  ),
                          prefixIcon: Icon(Icons.person)
                      ),
                    ),
                    TextField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.red,



                        toolbarOptions: ToolbarOptions(copy: false,cut: false,paste: false,selectAll: false),

                        decoration: InputDecoration(
                          labelText: "Enter Email",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 28,
                          ),

                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 23,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 3,


                            ),
                            borderRadius: BorderRadius.circular(10),                  ),
                            prefixIcon: Icon(Icons.mail)
                        ),
                      ),

                    TextField(
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.red,
                      obscureText:_obscureText,
                      obscuringCharacter: "*",

                      toolbarOptions: ToolbarOptions(copy: false,cut: false,paste: false,selectAll: false),
                      decoration: InputDecoration(
                        labelText: "Enter Password",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 28,
                        ),

                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 23,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,


                          ),
                          borderRadius: BorderRadius.circular(10),                  ),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText ? Icons.visibility :Icons.visibility_off ),
                            onPressed: (){
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          )

                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.red,


                      obscureText:_obscureText,
                      obscuringCharacter: "*",
                      toolbarOptions: ToolbarOptions(copy: false,cut: false,paste: false,selectAll: false),
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 28,
                        ),

                        hintText: "password",
                        hintStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 23,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 3,


                          ),
                          borderRadius: BorderRadius.circular(10),                  ),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText ? Icons.visibility :Icons.visibility_off ),
                            onPressed: (){
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          )

                      ),
                    ),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      print("Login successfull");
                    }, child: Text("Login")),
                  )
                  ],
                ),
              ),
            ),
          ),


        );
  }

}