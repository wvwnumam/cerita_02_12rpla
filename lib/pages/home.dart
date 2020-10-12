import 'package:flutter/material.dart';
import 'package:cerita_02_12rpla/var.dart';

class Home {
  page() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            'Halaman Home',
            style: TextStyle(color: Var().secondary, fontSize: 18),
          ),
        ));
  }
}
