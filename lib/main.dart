import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String btn = 'Click Me!';
  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter App"),
          ),

          body: Center(
            child: ind == 0 ? Container(
              // width: 400,
              // width: double.infinity, // takes max width/height space
              height: double.infinity,
              color: const Color.fromARGB(255, 77, 235, 247),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [ 
                  ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        btn = 'Already clicked';
                      })
                    }, 
                    child: Text(btn)
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white
                    ),
                    onPressed: () => {
                      setState(() {
                        btn = 'Second btn';
                      })
                    }, 
                    child: Text(btn)
                  )
                ]
              ),
            ) : Image.asset("images/soul-kiss.jpg")
          ),

          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(label: "Homepage", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Favourites', icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings))
            ],
            currentIndex: ind,
            onTap: (int index) {
              setState(() {
                ind = index;
              });
            }
          ),
        ) //the scaffold is the app skeleton (the whitebackground I saw)
        );
  }
}
