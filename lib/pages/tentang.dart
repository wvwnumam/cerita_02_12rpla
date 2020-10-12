import 'package:flutter/material.dart';
import 'package:cerita_02_12rpla/var.dart';

class Tentang {
  page() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'Halaman Tentang',
            style: TextStyle(color: Var().secondary, fontSize: 18),
          ),
        ));
  }
}
