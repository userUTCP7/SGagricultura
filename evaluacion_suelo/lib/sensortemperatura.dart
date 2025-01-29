import 'package:flutter/material.dart';
import 'submenu_sensores.dart';

class SensorTemperaturaPage extends StatelessWidget {
  const SensorTemperaturaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensor de Temperatura'),
        backgroundColor: const Color(0xFF4CAF50), // Verde oscuro
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFA5D6A7),
              Color(0xFFFFCCBC),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                  'assets/images/sensortemperatura.jpg'), // Ruta de la imagen
            ),
            const SizedBox(height: 20),
            const Text(
              'SENSOR DE TEMPERATURA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  _buildTextField('Id', '3'),
                  const SizedBox(height: 10),
                  _buildTextField('Nombre', 'Sensor de Temperatura'),
                  const SizedBox(height: 10),
                  _buildTextField(
                    'Descripción',
                    'Sensor que mide la temperatura del entorno',
                  ),
                  const SizedBox(height: 10),
                  _buildTextField('Unidad', '°C'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción para guardar
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFA5D6A7), // Verde claro
                  ),
                  child: const Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubmenuSensores()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFCCBC), // Café claro
                  ),
                  child: const Text('Volver'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildTextField(String label, String initialValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: TextEditingController(text: initialValue),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          readOnly: true,
        ),
      ],
    );
  }
}
