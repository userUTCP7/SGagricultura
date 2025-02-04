import 'package:flutter/material.dart';
import 'plantilla.dart';

class CultivoPage extends StatelessWidget {
  const CultivoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Plantilla(
      title: 'Monitoreo',
      body: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          final isWideScreen = maxWidth > 600;

          return Column(
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/monitoreo.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                'CULTIVO',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTextField('Id', '1', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('Id Grano', '1', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('Descripción',
                          'El maíz requiere un pH neutro', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('pH Min', '6.0', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('pH Max', '7.0', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('Temp Mínima', '20', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('Temp Máxima', '30', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('Humedad Mínima', '60', isWideScreen),
                      const SizedBox(height: 10),
                      _buildTextField('Humedad Máxima', '70', isWideScreen),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Volver'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Datos guardados')),
                      );
                    },
                    child: const Text('Guardar'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTextField(String label, String initialValue, bool isWideScreen) {
    return SizedBox(
      width: isWideScreen ? 400 : double.infinity,
      child: Column(
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
      ),
    );
  }
}
