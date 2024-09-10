import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';  // Importa el paquete url_launcher

class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  
  // Método para realizar la llamada telefónica
  void _makePhoneCall(String phoneNumber) async {
    final Uri callUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      // Manejar el caso en que no se pueda realizar la llamada
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No se pudo realizar la llamada')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label 1
            Text(
              'Label 1',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),

            // Label 2
            Text(
              'Label 2',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),

            // Label 3
            Text(
              'Label 3',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),

            // Botón "Llamada"
            ElevatedButton(
              onPressed: () {
                // Aquí se realiza la llamada
                _makePhoneCall('9191290778');  
              },
              child: Text('Llamada'),
            ),
            SizedBox(height: 8.0),

            // Botón "Mensaje"
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Mensaje'),
            ),
          ],
        ),
      ),
    );
  }
}
