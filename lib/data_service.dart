import 'post.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DataService {

  Future<List<Post>>getData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/1/posts/');
    var response = await http.get(url);
    var json =  jsonDecode(response.body) as List;
    var posts = json.map((postJson) => Post.fromJson(postJson)).toList();
    return posts;
  }
}