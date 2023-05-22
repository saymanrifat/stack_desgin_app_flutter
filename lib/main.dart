import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: 250,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.white,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 50),
                ),
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(bottom: 30, right: 30),
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.fork_right))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
