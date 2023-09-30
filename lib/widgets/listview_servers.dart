import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapptry/models/servermodel.dart';
import 'package:newsapptry/server/sreverapi.dart';
import 'package:newsapptry/widgets/listviewbuilder.dart';

class Listviewserversb extends StatefulWidget {
  const Listviewserversb({
    super.key, required this.catoigry,
  });
final String catoigry;
  @override
  State<Listviewserversb> createState() => _ListviewserversbState();
}

class _ListviewserversbState extends State<Listviewserversb> {
 late Future<List<ArticleModels>>? future;
  @override
  void initState() {
    super.initState();
    getgenralnews();
  }

  void getgenralnews()  {
    future =  NewsServers(Dio()).getHttp(catoigry: widget.catoigry);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModels>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Listviewbuilder(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(child: Center(child: Text("ed23dd3d")));
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
