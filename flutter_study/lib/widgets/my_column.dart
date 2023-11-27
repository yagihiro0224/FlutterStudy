import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  final String strName;
  final IconData icn;

  const MyColumn({
    super.key,
    required this.strName,
    required this.icn,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          // child: Transform.rotate(
          //   angle: -math.pi / 20.0,
          child: Container(
            padding: const EdgeInsets.all(1),
            color: const Color(0xFFE8581C),
            child: Transform.translate(
              offset: const Offset(1, -1),
              child: Text(
                strName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                ),
              ),
            ),
          ),
        ),
        Icon(
          icn,
          color: Colors.indigoAccent,
          size: 100,
        ),
      ],
    );
  }
}
