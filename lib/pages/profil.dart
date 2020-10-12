import 'package:flutter/material.dart';
import 'package:cerita_02_12rpla/var.dart';

class Profil {
  Padding page() {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profil.jpg'),
              radius: 40,
            ),
          ),
          Divider(
            height: 90,
            color: Var().primaryAccent,
          ),
          Text('NAMA',
              style: TextStyle(
                color: Var().primaryAccent,
              )),
          SizedBox(height: 10),
          Text('AHMAD NUHISYA ADILLAUMAM',
              style: TextStyle(
                  color: Var().secondary,
                  letterSpacing: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Text('NIS',
              style: TextStyle(
                color: Var().primaryAccent,
              )),
          SizedBox(height: 10),
          Text('18.0007671',
              style: TextStyle(
                  color: Var().secondary,
                  letterSpacing: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Text('KELAS',
              style: TextStyle(
                color: Var().primaryAccent,
              )),
          SizedBox(height: 10),
          Text('XII RPL-A',
              style: TextStyle(
                  color: Var().secondary,
                  letterSpacing: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Text('TEMUKAN SAYA DI',
              style: TextStyle(
                color: Var().primaryAccent,
              )),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Var().primaryAccent,
              ),
              SizedBox(width: 10),
              Text('wvwn@pm.me',
                  style: TextStyle(
                      color: Var().secondary,
                      letterSpacing: 1,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Icon(
                Icons.code,
                color: Var().primaryAccent,
              ),
              SizedBox(width: 10),
              Text('github.com/wvwnumam',
                  style: TextStyle(
                      color: Var().secondary,
                      letterSpacing: 1,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Icon(
                Icons.brush,
                color: Var().primaryAccent,
              ),
              SizedBox(width: 10),
              Text('dribbble.com/wvwnumam',
                  style: TextStyle(
                      color: Var().secondary,
                      letterSpacing: 1,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
