// ignore_for_file: prefer_const_constructors
import 'nWebview.dart';
import 'package:flutter/material.dart';

class acerca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Web'),
      ),
      body: nWebView('https://rancherosdelsur.com/'),
    );
  }
}
