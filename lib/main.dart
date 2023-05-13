import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const HomeWidget(title: 'Flutter Example App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key, required String title});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  String ball1Image = "assets/ball1.png";

  String ball2Image = "assets/ball2.png";

  void askme() {
    int randomNumber = Random().nextInt(5) + 1;
    int randomNumber2 = Random().nextInt(5) + 1;
    setState(() {
      ball1Image = "assets/ball$randomNumber.png";
      ball2Image = "assets/ball$randomNumber2.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("Ball Shuffling Project")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Ask Me Anything",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                ball1Image,
                height: 250,
                width: 250,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: askme,
            child: Text(
              "Ask Me",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
