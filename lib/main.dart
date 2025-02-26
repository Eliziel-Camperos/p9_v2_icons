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
              "Eliziel Camperos Garcia",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50), // Espacio entre texto y filas de iconos

            // Primera fila de iconos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                iconWithSubtitle(Icons.home, "Inicio", Colors.blue),
                iconWithSubtitle(Icons.star, "Favoritos", Colors.orange),
                iconWithSubtitle(Icons.favorite, "Amor", Colors.red),
              ],
            ),
            SizedBox(height: 30), // Espacio entre las filas

            // Segunda fila de iconos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                iconWithSubtitle(Icons.person, "Perfil", Colors.green),
                iconWithSubtitle(Icons.settings, "Ajustes", Colors.grey),
                iconWithSubtitle(Icons.add, "Agregar", Colors.purple),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Función para generar iconos con subtítulos
  Widget iconWithSubtitle(IconData icon, String text, Color color) {
    return Column(
      children: [
        Icon(icon, size: 50, color: color),
        SizedBox(height: 5), // Espacio entre icono y texto
        Text(text, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
