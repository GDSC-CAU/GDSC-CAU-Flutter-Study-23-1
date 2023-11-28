import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;
  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const Mylargetitle() : const Text('nothing'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Mylargetitle extends StatefulWidget {
  const Mylargetitle({
    super.key,
  });

  @override
  State<Mylargetitle> createState() => _MylargetitleState();
}

class _MylargetitleState extends State<Mylargetitle> {
  @override
  void initState() {
    //부모 요소에 값을 초기화 하기 위해서
    super.initState();
    print('initState!');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text(
      'My large title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
