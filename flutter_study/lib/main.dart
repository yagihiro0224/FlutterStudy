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
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Hello くるみ!',
            strutStyle: const StrutStyle(
              fontFamily: AutofillHints.birthday,
              fontWeight: FontWeight.w500,
            ),
            style: TextStyle(
              color: Colors.amber.shade400,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
            'Hello うめの!',
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
