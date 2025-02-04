import 'package:flutter/material.dart';
import 'plantilla.dart';
import 'submenu_sensores.dart';

class SensorTemperaturaPage extends StatelessWidget {
  const SensorTemperaturaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Plantilla(
      title: 'Sensor de Temperatura',
      body: Column(
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/sensortemperatura.jpg'),
          ),
          const SizedBox(height: 20),
          const Text(
            'SENSOR DE TEMPERATURA',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              _buildTextField('Id', '3'),
              const SizedBox(height: 10),
              _buildTextField('Nombre', 'Sensor de Temperatura'),
              const SizedBox(height: 10),
              _buildTextField(
                  'Descripción', 'Sensor que mide la temperatura del entorno'),
              const SizedBox(height: 10),
              _buildTextField('Unidad', '°C'),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Datos guardados')),
                  );
                },
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
                child: const Text('Volver'),
              ),
            ],
          ),
        ],
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
