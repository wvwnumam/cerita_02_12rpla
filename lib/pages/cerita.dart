import 'package:flutter/material.dart';
import 'package:cerita_02_12rpla/var.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Cerita {
  page() {
    Future<List<Post>> _getPosts() async {
      var data = await http.get('https://jsonplaceholder.typicode.com/posts');
      var jsonData = json.decode(data.body);
      List<Post> posts = [];

      for (var p in jsonData) {
        Post post = Post(p['userId'], p['id'], p['title'], p['body']);
        posts.add(post);
      }

      print(posts.length);

      return posts;
    }

    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: _getPosts(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return SafeArea(
                    child: Center(
                  child: Text(
                    'Menghubungkan...',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Var().secondary),
                  ),
                ));
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int id) {
                    return Card(
                        color: Var().primaryHighlight,
                        child: ListTile(
                          leading:
                              Icon(Icons.notes, color: Var().primaryAccent),
                          title: Text(
                            snapshot.data[id].title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Var().secondary),
                          ),
                          subtitle: Text(
                            'id pencipta: ${snapshot.data[id].userId}',
                            style: TextStyle(color: Var().primaryAccent),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        DetailCerita(snapshot.data[id])));
                          },
                        ));
                  },
                );
              }
            },
          )),
    );
  }
}

class DetailCerita extends StatelessWidget {
  final Post post;
  DetailCerita(this.post);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Var().primary,
      appBar: AppBar(
        title: Text(
          post.title,
          style: TextStyle(color: Var().secondary),
        ),
        backgroundColor: Var().primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Text(post.title, style: TextStyle(color: Var().secondary)),
            ),
            ListTile(
              title:
                  Text(post.body, style: TextStyle(color: Var().primaryAccent)),
            ),
            ListTile(
              title: Text('id: ${post.id}',
                  style: TextStyle(color: Var().primaryAccent)),
            ),
            ListTile(
              title: Text('pencipta: ${post.userId}',
                  style: TextStyle(color: Var().primaryAccent)),
            ),
          ],
        ),
      ),
    );
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);
}
