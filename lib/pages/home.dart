import 'package:flutter/material.dart';
import 'package:cerita_02_12rpla/var.dart';
import 'package:cerita_02_12rpla/pages/cerita.dart';

class Home {
  page() {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Card(
                  color: Var().primaryHighlight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profil.jpg'),
                        radius: 40,
                      ),
                      SizedBox(width: 20),
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Ahmad Nuhisya Adillaumam",
                                style: TextStyle(
                                    color: Var().secondary,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                            Text("XII RPL-A",
                                style: TextStyle(
                                    color: Var().primaryAccent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ])
                    ]),
                  ),
                ),
                ListTile(
                  title: Text('MENU',
                      style: TextStyle(color: Var().primaryAccent)),
                ),
                Card(
                  color: Var().primaryHighlight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                            color: Var().secondary,
                            highlightColor: Var().secondaryHighlight,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.notes,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'CERITA',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Var().primary),
                                  )
                                ],
                              ),
                            ),
                            onPressed: () {}),
                        RaisedButton(
                            color: Var().secondary,
                            highlightColor: Var().secondaryHighlight,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.account_circle,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'PROFIL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Var().primary),
                                  )
                                ],
                              ),
                            ),
                            onPressed: () {}),
                        RaisedButton(
                            color: Var().secondary,
                            highlightColor: Var().secondaryHighlight,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.info,
                                    size: 50,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'TENTANG',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Var().primary),
                                  )
                                ],
                              ),
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: Text('TENTANG',
                      style: TextStyle(color: Var().primaryAccent)),
                ),
                Card(
                    color: Var().primaryHighlight,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(
                              'Aplikasi cerita. \nHa! cerite? \nSaye suka crite-crite cekgu! \nJarjit, bukan cerite, cite-cite. \nMaksudnye besar nanti kamu nak jadi ape? \nOoo...',
                              style: TextStyle(color: Var().primaryAccent)),
                        ))),
                ListTile(
                  title: Text('CERITA',
                      style: TextStyle(color: Var().primaryAccent)),
                ),
              ],
            )));
  }
}
