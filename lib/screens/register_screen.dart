import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Controladores para los TextFields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController conditionController = TextEditingController();
  final TextEditingController allergyController = TextEditingController();

  // Variables para los alimentos preferidos (checkboxes)
  Map<String, bool> preferredFoods = {
    'Aguacate': false,
    'Tomate': false,
    'Calabaza': false,
    'Pepino': false,
    'Cebolla': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Nombre
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            
            // Email
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            
            // Contraseña
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),

            // Peso
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso (kg)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Estatura
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Estatura (cm)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Padecimiento médico
            TextField(
              controller: conditionController,
              decoration: InputDecoration(
                labelText: 'Padecimiento Médico',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Preferencias de alimentos (checkboxes)
            Text('Seleccione sus alimentos preferidos:'),
            Column(
              children: preferredFoods.keys.map((String key) {
                return CheckboxListTile(
                  title: Text(key),
                  value: preferredFoods[key],
                  onChanged: (bool? value) {
                    setState(() {
                      preferredFoods[key] = value!;
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Alergias
            TextField(
              controller: allergyController,
              decoration: InputDecoration(
                labelText: 'Alergias (especifique)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Botón de registro
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String name = nameController.text;
                  String email = emailController.text;
                  String password = passwordController.text;
                  String weight = weightController.text;
                  String height = heightController.text;
                  String condition = conditionController.text;
                  String allergies = allergyController.text;
                  
                  List<String> selectedFoods = preferredFoods.entries
                      .where((entry) => entry.value)
                      .map((entry) => entry.key)
                      .toList();

                  // Validación básica
                  if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
                    // Mostrar los datos en consola o hacer una acción con ellos
                    print("Nombre: $name");
                    print("Email: $email");
                    print("Contraseña: $password");
                    print("Peso: $weight kg");
                    print("Estatura: $height cm");
                    print("Padecimiento: $condition");
                    print("Alimentos preferidos: ${selectedFoods.join(', ')}");
                    print("Alergias: $allergies");

                    Navigator.pop(context);  // Navegar atrás o continuar
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Por favor, complete todos los campos obligatorios.')),
                    );
                  }
                },
                child: Text('Registrarse'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
