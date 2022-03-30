import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/post.dart';

class PostApi {
  Future<List<Post>> getPost() async {
    // ignore: prefer_const_declarations
    final baseUrl = 'https://jsonplaceholder.typicode.com/posts';
    final response = await http.get(Uri.parse(baseUrl));
    final json = jsonDecode(response.body) as List;
    final posts = json.map((e) => Post.fromJson(e)).toList();
    return posts;
  }
}
