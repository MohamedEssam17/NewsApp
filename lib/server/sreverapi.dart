import 'package:dio/dio.dart';
import 'package:newsapptry/models/servermodel.dart';
class NewsServers
{
  
final Dio dio ;
NewsServers( this.dio);

Future<List<ArticleModels>> getHttp({required final String catoigry}) async {
  try{
var response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=8d2ae9d3543444e4975ffe6bc051e0d1&category=$catoigry");

  Map<String , dynamic> json= response.data;
  List<dynamic> articles = json["articles"];
  List<ArticleModels> articstore=[];
  for (var article in articles) {
    ArticleModels a = ArticleModels(image: article["urlToImage"], decoration: article["description"], title: article["title"],url: article['url']);
    articstore.add(a);
      }
      return articstore;
}
catch(e){
  return [];
}
}
}