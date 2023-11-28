import 'package:flutter/material.dart';

class AnotherScreen extends StatelessWidget {
  final String title;
  const AnotherScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        title,
      )),
      body: Center(
        child: Container(
          child: myColum(),
        ),
      ),
    );
  }

  Column myColum() {
    return Column(children: [
      Text(
        title,
        style: const TextStyle(
          color: Colors.redAccent,
          fontSize: 50,
        ),
      ),
    ]);
  }
}
