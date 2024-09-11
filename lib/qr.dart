
import 'dart:convert' show jsonDecode, jsonEncode;
import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_tesseract_ocr/flutter_tesseract_ocr.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:logging/logging.dart';
import 'package:hdims_biosync/main.dart';
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
            Image.asset('assets/images/qrcode.jpeg'),
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
