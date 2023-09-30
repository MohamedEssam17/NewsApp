import 'package:flutter/material.dart';
import 'package:newsapptry/widgets/listview_servers.dart';
import 'package:newsapptry/widgets/cardsbuilder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(color: Colors.black, fontSize: 23),
              ),
              Text(
                "Cloud",
                style: TextStyle(color: Colors.orange, fontSize: 23),
              )
            ],
          ),
        ),
        body: const CustomScrollView(
           
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: Cardsbuilder()),
            Listviewserversb(catoigry: "general",),
          ],
        ));
  }
}

