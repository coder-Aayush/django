import 'dart:convert';

import 'package:wallpro/data/api_link.dart';
import 'package:wallpro/models/blog.dart';
import 'package:http/http.dart' as http;

Future<Blog> getBlog() async {
  final response = await http.get(url);
  if (response.statusCode == 200) {
    String jsonBlog = json.decode(response.body);
    return Blog.fromJson(jsonBlog);
  } else {
    throw Exception();
  }
}
