import 'package:financet/splashscreen.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'login_page.dart';
import 'forgot_password_page.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash', // Définit la route initiale comme SplashScreen
      routes: {
        '/splash': (context) => const SplashScreen(), // La page de démarrage
        '/home': (context) =>
            const HomePage(), // Assurez-vous que le fichier home.dart est correctement importé
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/forgot_password': (context) => const ForgotPasswordPage(),
      },
    );
  }
}
