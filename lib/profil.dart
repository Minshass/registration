import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          SizedBox(height: 200,),
          CircleAvatar(
            radius: 40,
              child: Icon(Icons.person,
              size:40 ,),
          ),
          Text('beautiful',style: TextStyle(fontStyle: FontStyle.italic),),
          Container(
            decoration: BoxDecoration(
              color: Colors.white),
            child: Row(
              children: [
                Icon(Icons.phone),
                Text('+91 9456738456'),
                SizedBox(height: 40,),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white),
            child: Row(
              children: [
                Icon(Icons.email),
                Text('minshaa1234@gmail.com'),
                SizedBox(height: 40,),
          ],
            ),
          )
        ],
      ),
    );
  }
}
