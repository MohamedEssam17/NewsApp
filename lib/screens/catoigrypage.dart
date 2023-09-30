import 'package:flutter/material.dart';
import 'package:newsapptry/widgets/listview_servers.dart';

class Cartoigrypage extends StatelessWidget {
  const Cartoigrypage({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(slivers: [
        SliverAppBar(
          title: Text(category.toUpperCase(),),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 15,
        ),
        Listviewserversb(catoigry:category ,)
      ]),
    );
  }
}