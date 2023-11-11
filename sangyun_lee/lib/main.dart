import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blueAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: const Offset(0, 7),
                    )
                  ]),
              height: 150,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          width: 75,
                          height: 75,
                          child: const Center(child: Text("a")),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sangyun lee"),
                            Text("Software Enginneer")
                          ],
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
                    ],
                  ),
                  Row(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
