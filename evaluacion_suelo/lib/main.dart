import 'package:flutter/material.dart';
import 'menu.dart'; // Importa el archivo menu.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inicio de sesion',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4E342E), // Marrón oscuro
              Color(0xFF8D6E63), // Marrón claro
              Color(0xFF1B5E20), // Verde oscuro
              Color(0xFF4CAF50), // Verde claro
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: size.width > 600 ? 400 : size.width * 0.9,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Sistema de evaluacion del PH del suelo',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4E342E),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Imagen aumentada
                  Image.asset(
                    'assets/images/login.jpg', // Asegúrate de tener esta imagen en tu carpeta assets/images
                    height:
                        size.height * 0.3, // 30% de la altura de la pantalla
                    width: size.width * 0.8, // 80% del ancho de la pantalla
                    fit: BoxFit.cover, // Asegura que la imagen se adapte bien
                  ),

                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Usuario',
                      labelStyle: const TextStyle(color: Color(0xFF1B5E20)),
                      prefixIcon:
                          const Icon(Icons.person, color: Color(0xFF4CAF50)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Color(0xFF1B5E20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Color(0xFF4CAF50)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      labelStyle: const TextStyle(color: Color(0xFF1B5E20)),
                      prefixIcon:
                          const Icon(Icons.lock, color: Color(0xFF4CAF50)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Color(0xFF1B5E20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Color(0xFF4CAF50)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const MenuPage(), // Redirige al menú
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1B5E20), // Verde oscuro
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Iniciar sesion',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      // Acción de recuperación de contraseña
                    },
                    child: const Text(
                      'Olvidaste tu contraseña?',
                      style: TextStyle(color: Color(0xFF4E342E)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
