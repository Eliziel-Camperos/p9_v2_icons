import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fila de Iconos"),
          titleTextStyle: TextStyle(color: Colors.black87, fontSize: 24),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 20), // Espacio entre AppBar y texto
            Text(
              "Eliziel Camperos Garcia 22308051281159",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50), // Espacio entre texto y fila de iconos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Icono 1 - Casa
                Column(
                  children: [
                    Icon(Icons.home, size: 50, color: Colors.blue),
                    SizedBox(height: 5), // Espacio entre icono y texto
                    Text("Inicio", style: TextStyle(fontSize: 16)),
                  ],
                ),

                // Icono 2 - Estrella
                Column(
                  children: [
                    Icon(Icons.star, size: 50, color: Colors.orange),
                    SizedBox(height: 5),
                    Text("Favoritos", style: TextStyle(fontSize: 16)),
                  ],
                ),

                // Icono 3 - Corazón
                Column(
                  children: [
                    Icon(Icons.favorite, size: 50, color: Colors.red),
                    SizedBox(height: 5),
                    Text("Amor", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
