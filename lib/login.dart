import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.teal,fixedSize: Size(100,50)),
                  onPressed: () {},
                  child: Text('login',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  SizedBox(height: 30),
                  TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg(),
                    ));
                  },
                      child: Text('Dont have an account?Register now',))
            ]
            ),
          ),
        );
  }
}
