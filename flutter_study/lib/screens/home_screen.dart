import 'package:flutter/material.dart';
import 'package:flutter_study/models/data_model.dart';
import 'package:flutter_study/sertvices/api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataModel> datas = [];
  bool isLoading = true;

  void waitForData() async {
    datas = await ApiService.getApiDatas();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Flexible(
          flex: 1,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
          ),
        ),
      ]),
    );
  }
}
