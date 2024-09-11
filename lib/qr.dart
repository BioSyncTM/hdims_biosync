
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Scan QR',
                  style: TextStyle(
                      color: Color.fromARGB(215, 0, 66, 74),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Image.asset('assets/images/qrqr.png'),
            SizedBox(height: 20),
            Text('This is an example QR code'),
            SizedBox(height: 20), // Adding spacing between Text and ElevatedButton
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
