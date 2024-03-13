import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class reg extends StatefulWidget {
  const reg({Key? key}) : super(key: key);

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
        ),
            Container(
              height: 100,
              width: 100,
              child: Image.asset('C:\Users\SJC\Downloads\login image.jpg')),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.asset('images/Qr.png'),



            ),
            QrImage(
              data: '1234567890',
              size: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
