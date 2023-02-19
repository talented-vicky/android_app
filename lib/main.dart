import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter App"),
          ),

          body: Center(
              child: ElevatedButton(onPressed: () => {}, child: const Text('Click Me!'))
          ),

          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(label: "Homepage", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Favourites', icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings))
          ]),
        ) //the scaffold is the app skeleton (the whitebackground I saw)
        );
  }
}
