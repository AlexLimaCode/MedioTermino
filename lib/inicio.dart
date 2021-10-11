// ignore_for_file: prefer_const_constructorsy, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('About'),
        ),
        body: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rancheros del Sur",
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 40,
                    color: Colors.orangeAccent),
              )
            ],
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(25),
              child: Text(
                  "Esta empresa familiar fundada por el señor Josafat Acuña López y la señora Eva Duarte Jaramillo familia originaria de Tejupilco Estado de México. Actualmente cuenta con 50 años de presencia en el mercado y municipios de Toluca coma Tejupilco, Zinacantepec, San Mateo Atenco y Calimaya. Sucursales que te hacen sentir como en casa, no solo por su extraordinaria atención sino por sus exquisitos platillos muy mexicanos.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify),
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://rancherosdelsur.com/wp-content/uploads/2021/09/DSC3576-2.jpg',
                  cacheHeight: 200,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                ),
                Image.network(
                  'https://rancherosdelsur.com/wp-content/uploads/2021/09/asada.jpg',
                  cacheHeight: 200,
                )
              ],
            ),
          ),
        ]));
  }
}
