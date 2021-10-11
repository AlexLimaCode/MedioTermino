// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'inicio.dart';
import 'contacto.dart';
import 'acerca.dart';
import 'chat2.dart';

class tabsbajo extends StatefulWidget {
  @override
  _tabsbajoState createState() => _tabsbajoState();
}

class _tabsbajoState extends State<tabsbajo> {
  int indice = 0;
  final pantallas = <Widget>[
    inicio(),
    contacto(),
    acerca(),
    chat(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: IndexedStack(index: indice, children: pantallas),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orange,
        selectedItemColor: Colors.white,
        iconSize: 40,
        currentIndex: indice,
        onTap: (index) => setState(() => indice = index),
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: 'Contacto'),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
              icon: Icon(Icons.open_in_browser), label: 'Web'),
          BottomNavigationBarItem(
              icon: Icon(Icons.image_outlined), label: 'Platillos'),
        ],
      ),
    ));
  }
}
