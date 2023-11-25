import 'package:flutter/material.dart';
import 'package:sangyun_lee/pages/firstpage.dart';
import 'package:sangyun_lee/pages/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FurnitureApp(),
    );
  }
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Center",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: PageView(
        children: const [
          FirstPage(),
          SecondPage(),
        ],
      ),
    );
  }
}
