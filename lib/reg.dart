import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:registration/login.dart';
import 'package:registration/profil.dart';
import 'package:registration/scan.dart';
import 'package:http/http.dart' as http;

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  TextEditingController _name = TextEditingController();
  TextEditingController _rollno = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  void register() async {
    print(_name.text);
    print(_rollno.text);
    print(_email.text);
    print(_password.text);

    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode({
          'name': _name.text,
          'email': _email.text,
          'rollno': _rollno.text,
          'password': _password.text,
        }));
    var data = jsonDecode(response.body);
    print(data["message"]);
    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('USER ALREADY EXIST')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Text(
              'Registration',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        backgroundColor: Colors.teal,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              controller: _name,
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your name'),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _rollno,
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your rollno'),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _email,
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your email'),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _password,
              obscureText: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password'),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, fixedSize: Size(300, 80)),
              onPressed: () {
                setState(() {
                  register();
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Scanner()),
                );
              },
              child: Text(
                'Log in',
                style: TextStyle(fontSize: 30, color: Colors.white),)),
          ]),
        ));
  }
}
