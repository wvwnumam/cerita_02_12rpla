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
                    return ListTile(
                      title: Text(
                        snapshot.data[id].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Var().secondary),
                      ),
                    );
                  },
                );
              }
            },
          )),
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

// Column(
//   children: <Widget>[
//     Card(
//       color: Var().primaryHighlight,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'INI JUDUL',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Var().secondary),
//             ),
//             RaisedButton(
//                 color: Var().secondary,
//                 child: Text(
//                   'BACA',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Var().primary),
//                 ),
//                 onPressed: () {}),
//           ],
//         ),
//       ),
//     ),
//   ],
// )
