import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/act1_screen.dart';
import 'screens/phone_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/',  
      routes: {
        '/': (context) => WelcomeScreen(),  
        '/login': (context) => LoginScreen(onLogin: () {
          Navigator.pushNamed(context, '/phone');
        }),  
        '/register': (context) => RegisterScreen(),  
        '/act': (context) => Act1Screen(),  
        '/phone': (context) => PhoneScreen(),  
        '/act1': (context) => Act1Screen()
      },
    );
  }
}
