import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_study/screens/another_screen.dart';

class MyColumn extends StatefulWidget {
  final String strName;
  final IconData icn;

  const MyColumn({
    super.key,
    required this.strName,
    required this.icn,
  });

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  int counter = 0;

  void onClick() {
    setState(() {
      counter = counter + 1;
    });
  }

  late Timer timer;
  void onTick(Timer timer) {
    setState(() {});
  }

  void onStartTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnotherScreen(
                    title: 'Another Screen',
                  ),
                  fullscreenDialog: true,
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFE8581C),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(1),
              child: Transform.translate(
                offset: const Offset(1, -1),
                child: Text(
                  widget.strName,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.titleLarge?.color,
                    fontSize: 100,
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          widget.icn,
          color: Colors.indigoAccent,
          size: 100,
        ),
        Text(
          '$counter',
          style: const TextStyle(fontSize: 30),
        ),
        IconButton(
          onPressed: onClick,
          icon: const Icon(Icons.add_circle_outlined),
        ),
      ],
    );
  }
}
