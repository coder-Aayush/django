import 'package:flutter/material.dart';
import 'package:wallpro/models/blog.dart';
import 'package:wallpro/services/api_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FutureBuilder<Blog>(
          future: getBlog(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Card(
                child: Text("${snapshot.data.id}"),
              );
            } else if (snapshot.hasError) {
              return Text('Error');
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
