// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'obtieneDatos.dart';
import 'regreso.dart';

class chat extends StatefulWidget {
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  String fondo = "";

  Future<void> dato() async {
    obtieneDatos dat = new obtieneDatos();
    regreso r = await dat.getdatos("api") as regreso;
    fondo = r.fondo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        onDrawerChanged: (isOpened) => dato(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Platillos'),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              fondo != ""
                  ? Image.network(fondo)
                  : ElevatedButton(
                      onPressed: () => dato(),
                      child: Text("Obtener Platillo"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          fixedSize: Size(300, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
            ],
          ),
        ));
  }
}
