import 'package:flutter/material.dart';
import 'plantilla.dart';
import 'submenu_sensores.dart';

class SensorPHPage extends StatelessWidget {
  const SensorPHPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Plantilla(
      title: 'Sensor de PH',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/sensorph.jpg'),
          ),
          const SizedBox(height: 20),
          const Text(
            'SENSOR DE PH',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTextField('Id', '1'),
              const SizedBox(height: 10),
              _buildTextField('Nombre', 'Sensor de PH'),
              const SizedBox(height: 10),
              _buildTextField(
                'Descripción',
                'Sensor que mide el nivel de pH en el suelo',
              ),
              const SizedBox(height: 10),
              _buildTextField('Unidad de medida', 'pH'),
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA5D6A7),
                ),
                child: const Text('Guardar'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SubmenuSensores(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFCCBC),
                ),
                child: const Text('Volver'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, String initialValue) {
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
