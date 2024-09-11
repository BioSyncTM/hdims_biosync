
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Health Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
