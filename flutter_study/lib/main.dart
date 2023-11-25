// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.5),
                ),
                'Hello!',
              ),
              const Text(
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 240, 140, 240),
                ),
                'Hello~',
              ),
            ],
          ),
        ),
      ),
    );
    // return const CupertinoApp(
    //     home: Text(
    //   'Hello World!',
    //   style: TextStyle(color: Colors.amberAccent),
    // ));
  }
}
