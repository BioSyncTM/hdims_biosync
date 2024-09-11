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
                    "BioSync"
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20, right: 15),
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
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 120),
                        child: Text(
                          softWrap: true,
                          "Harshvardhan Kandasamy",
                          style: TextStyle(
                            fontSize: 16
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // Pages
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            "Home",
                          )
                        ),
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
                            width: 1,
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
