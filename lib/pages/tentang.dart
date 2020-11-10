import 'package:flutter/material.dart';
import 'package:cerita_02_12rpla/var.dart';

class Tentang {
  page() {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: Text('Nama',
                      style: TextStyle(color: Var().primaryAccent)),
                ),
                ListTile(
                  title: Text('CERITA 02 XII RPL-A',
                      style: TextStyle(color: Var().secondary)),
                ),
                ListTile(
                  title: Text('Versi',
                      style: TextStyle(color: Var().primaryAccent)),
                ),
                ListTile(
                  title: Text('0.1', style: TextStyle(color: Var().secondary)),
                ),
                ListTile(
                  title: Text('Tentang',
                      style: TextStyle(color: Var().primaryAccent)),
                ),
                ListTile(
                  title: Text(
                      'Aplikasi cerita. \nHa! cerite? \nSaye suka crite-crite cekgu! \nJarjit, bukan cerite, cite-cite. \nMaksudnye besar nanti kamu nak jadi ape? \nOoo...',
                      style: TextStyle(color: Var().secondary)),
                ),
              ],
            )));
  }
}
