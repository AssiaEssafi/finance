import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ajoutez un délai de 3 secondes avant de naviguer vers la page d'accueil
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
            builder: (context) => const HomePage()), // Navigation vers HomePage
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image du logo
            Image.asset(
              'assets/log.jpg', // Assurez-vous que le fichier logo.png existe dans le dossier 'assets'
              width: 150, // Ajustez la taille du logo
              height: 150,
            ),
            const SizedBox(height: 20),
            // Indicateur de chargement
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
