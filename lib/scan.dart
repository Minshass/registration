import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
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
            CircleAvatar(radius: 50,
              child: Icon(Icons.person,size: 100,),),
            SizedBox(
              height: 100,
            ),
            QrImageView(
              data: '1234567890',
              version: QrVersions.auto,
              size: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}


