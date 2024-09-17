import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        backgroundColor: Colors.deepPurple, 
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.purpleAccent.withOpacity(0.1), // Fondo con un color suave
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Expande los elementos horizontalmente
          children: <Widget>[
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 86.0,
            ),
            Text(
              '¡Bienvenido!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 20),

            // Botón "Iniciar Sesión"
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Iniciar Sesión'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Color del botón
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15), // Espaciado interno
              ),
            ),
            SizedBox(height: 20),

            // Botón "Registrarse"
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Registrarse'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, 
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15), 
              ),
            ),
            SizedBox(height: 20),

            // Botón "Actividad 1"
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/act1');
              },
              child: Text('Actividad 1'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15), // Espaciado interno
              ),
            ),
          ],
        ),
      ),
    );
  }
}