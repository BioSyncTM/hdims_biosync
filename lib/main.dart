import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BioSync HDMIS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 136, 241, 255)),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: const MyHomePage(title: 'Welcome, User!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Top Bar
        child: Column(
          children: [
            // TopBar
            Container(
              margin: EdgeInsets.only(top: 64, left: 20),
              child: const Text(
                "Welcome, User!",
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
