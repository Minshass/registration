import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text('login',style: TextStyle(
              fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold),
          ),
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
                    labelText: 'enter your roll no'


                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'enter your password'
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(100,50)),
                onPressed: () {},
                child: Text('login',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              SizedBox(height: 30),
              TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(),
              ));
              },
                  child: Text('Dont have an account?Register now',))
            ]
        ),
      ),
    );
  }
}

