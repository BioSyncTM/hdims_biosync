// ignore_for_file: prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:hdims_biosync/qr.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 136, 241, 255),
        ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: const Color.fromARGB(215, 0, 66, 74),
        child: Icon(Icons.chat, color: const Color.fromARGB(215, 255, 255, 255),), 
      ),
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.fromLTRB(20, 60, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App title
                Container(
                  child: Text(
                    "BioSyncTM"
                  )
                ),

                Container(
                  child: Text(
                    "MediTrack",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 30),
                ),

                // Profile
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(75, 0, 66, 74),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.black,
                            width: 1
                          )
                        ),
                        child: Center(child: Text("PFP")),
                        width: 80,
                        height: 80,
                      ),
                      Expanded(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: 120),
                          child: Text(
                            softWrap: true,
                            "Harshvardhan Kandasamy",
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // Pages
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => super.widget
                          )
                        ),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Color.fromARGB(215, 0, 66, 74),
                          ),
                        )
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondPage()),
                          );
                        },
                        child: Text(
                          "Generate QR",
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // Top Bar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TopBar
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: const Text(
                  "Welcome, User!",
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
              ),
        
              // Search bar
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: TextField(
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelText: "Search"
                        ),
                      ),
                    ),
                  ),
        
                  // Quick Glance
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(75, 0, 66, 74),
                              border: Border.all(
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Quick Glance",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                          
                                ConstrainedBox(
                                  constraints: BoxConstraints(maxHeight: 80),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
        
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(75, 0, 66, 74),
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                width: 1,
                              )
                            ),
                            child: Container(
                              margin: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Text(
                                    "Notice",
                                    style: TextStyle(
                                      fontSize: 20
                                    ),
                                  ),
                                  Text(
                                    "No announcements."
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
        
              // Quick Glance
              
            ],
          ),
        
        ),
      ),
    );
  }
}
