import 'package:evaluacion_suelo/sensorhumedad.dart';
import 'package:evaluacion_suelo/sensorph.dart';
import 'package:evaluacion_suelo/sensortemperatura.dart';
import 'package:flutter/material.dart';
import 'menu.dart'; // Importamos el menú principal para el botón de regresar

class SubmenuSensores extends StatelessWidget {
  const SubmenuSensores({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensores'),
        backgroundColor: const Color(0xFF1B5E20), // Verde oscuro
      ),
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
        child: GridView.count(
          padding: const EdgeInsets.all(16.0),
          crossAxisCount: size.width > 600 ? 4 : 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildMenuItem(
              context,
              icon: Icons.water_drop,
              label: 'Sensor PH',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SensorPHPage()),
                );
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.cloud,
              label: 'Sensor Humedad',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SensorHumedadPage()),
                );
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.thermostat,
              label: 'Sensor Temperatura',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SensorTemperaturaPage()),
                );
              },
            ),
            _buildMenuItem(
              context,
              icon: Icons.arrow_back,
              label: 'Volver',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context,
      {required IconData icon,
      required String label,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: const Color(0xFF1B5E20)),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B5E20)),
            ),
          ],
        ),
      ),
    );
  }
}
