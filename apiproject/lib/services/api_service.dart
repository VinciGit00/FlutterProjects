import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:apiproject/model/Article.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = http.Client();
  Future<List<Article>> getArticle() async {
    final queryParameters = {
      'country': 'us',
      'category': 'technology',
      'apiKey': '0acee76f2acd4b398a1fd75ce028b46f'
    };
    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);

    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=ElonMusk&apiKey=0acee76f2acd4b398a1fd75ce028b46f"));

    /** NBA:
    * final response = await http.get(Uri.parse(
    *      "https://newsapi.org/v2/everything?q=NBA&apiKey=0acee76f2acd4b398a1fd75ce028b46f"));
    */

    /**
     * News about Bitcoin:
    *  final response = await http.get(Uri.parse(
    *   ""https://newsapi.org/v2/everything?q=bitcoin&apiKey=0acee76f2acd4b398a1fd75ce028b46f"));
    */

    /**
    * Path for BBC news:
    */
    /*final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=0acee76f2acd4b398a1fd75ce028b46f"));*/

    /**
     * MOCKUP PATHS:
     *  * Path for All articles published by the Wall Street Journal 
     * in the last 6 months, sorted by recent first 
     * final response = await http.get(Uri.parse(
     * "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=0acee76f2acd4b398a1fd75ce028b46f"));
     * Alternative path:
     * Top headlines from TechCrunch right now
     * final response = await http.get(Uri.parse(
        " https: //newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=0acee76f2acd4b398a1fd75ce028b46f"));
     */

    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];

    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    print(articles);
    return articles;
  }
}
