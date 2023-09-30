import 'package:flutter/material.dart';
import 'package:newsapptry/models/servermodel.dart';
import 'package:newsapptry/widgets/listview.dart';




class Listviewbuilder extends StatelessWidget {
  const Listviewbuilder({super.key, required this.articles });
final List<ArticleModels> articles ;
  
  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate:SliverChildBuilderDelegate(
       childCount: articles.length,
      (contex,index){
return NewsTitle(item: articles[index],);
    }));
  }
}
