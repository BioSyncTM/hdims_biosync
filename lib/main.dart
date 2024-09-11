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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            margin: EdgeInsets.fromLTRB(20, 50, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile
                Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        child: Text("PFP"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
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
                        margin: EdgeInsets.only(left: 20, right: 20),
                        padding: EdgeInsets.all(20),
                        height: 100,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(75, 0, 66, 74),
                          border: Border.all(
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Text(
                          "Good to go!",
                          style: TextStyle(
                            fontSize: 16,

                          ),

                        ),
                      ),
                    ),
                  ]
                )
              ],
            ),

            // Quick Glance
            
          ],
        ),

      ),
    );
  }
}
