import 'package:flutter/material.dart';
import 'package:cerita_02_12rpla/var.dart';
import 'package:cerita_02_12rpla/pages/home.dart';
import 'package:cerita_02_12rpla/pages/cerita.dart';
import 'package:cerita_02_12rpla/pages/profil.dart';
import 'package:cerita_02_12rpla/pages/tentang.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home().page(),
    Cerita().page(),
    Profil().page(),
    Tentang().page()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Var().primary,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Var().primary,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            label: 'Cerita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang',
          ),
        ],
        selectedItemColor: Var().secondary,
        unselectedItemColor: Var().primaryAccent,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
