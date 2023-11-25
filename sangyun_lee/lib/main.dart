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

class FurnitureApp extends StatefulWidget {
  const FurnitureApp({super.key});

  @override
  State<FurnitureApp> createState() => _FurnitureAppState();
}

class _FurnitureAppState extends State<FurnitureApp> {
  String title = "Center";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart_checkout_rounded),
          )
        ],
        centerTitle: false,
      ),
      body: PageView(
        onPageChanged: (int index) {
          setState(() {
            if (index == 0) {
              title = "Center";
            } else {
              title = "Furniture";
            }
          });
        },
        children: const [
          FirstPage(),
          SecondPage(),
        ],
      ),
    );
  }
}
