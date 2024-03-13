import 'package:flutter/material.dart';
class Reg extends StatefulWidget {
  const Reg ({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _MyAppState();
}

class _MyAppState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        title:Center(
        child:Text('Registration',style: TextStyle(
        fontSize: 30,color:Colors.red,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,),
        ),),
    backgroundColor: Colors.teal,
    body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child:Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextField(
    obscureText: false,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your name'
    ),
    ),
    SizedBox(height: 15),
    TextField(
    obscureText: false,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter your roll no'
    ),
      ),
        SizedBox(height: 15),
        TextField(
          obscureText: false,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your email'
          ),
        ),
        SizedBox(height: 15),
        TextField(
          obscureText: false,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password'
          ),
        ),
      SizedBox(height: 30),
      ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.teal,fixedSize: Size(100,50)),
        onPressed: () {},
        child: Text('Registration',style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
  ]
    ),))
    );
  }
}
