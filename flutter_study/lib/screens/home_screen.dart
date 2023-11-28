import 'package:flutter/material.dart';
import 'package:flutter_study/models/data_model.dart';
import 'package:flutter_study/sertvices/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<DataModel>> datas = ApiService.getApiDatas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: datas,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return dataList(snapshot);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView dataList(AsyncSnapshot<List<DataModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        var data = snapshot.data![index];
        return Text(data.id);
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
    );
  }
}
