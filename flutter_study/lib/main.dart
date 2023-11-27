import 'package:flutter/material.dart';
import 'package:flutter_study/widgets/my_app_bar.dart';
import 'package:flutter_study/widgets/my_column.dart';
// import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String _strNameA = 'STUDY';
  final String _strNameB = 'YOU';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.indigoAccent,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: MyAppBar(strName: _strNameA, appColor: Colors.yellowAccent),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyColumn(
                strName: _strNameA,
                icn: Icons.access_time_filled,
              ),
              MyColumn(
                strName: _strNameB,
                icn: Icons.account_circle,
              ),
              MyColumn(
                strName: _strNameA,
                icn: Icons.add_chart_sharp,
              ),
              MyColumn(
                strName: _strNameB,
                icn: Icons.account_balance_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
