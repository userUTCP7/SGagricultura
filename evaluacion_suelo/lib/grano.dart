import 'package:flutter/material.dart';

class GranoPage extends StatelessWidget {
  const GranoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Granos'),
        backgroundColor: const Color(0xFF4CAF50), // Verde oscuro
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFA5D6A7), // Verde claro
              Color(0xFFFFCCBC), // Café claro
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Nueva imagen circular arriba
              const CircleAvatar(
                radius: 80, // Tamaño de la imagen circular
                backgroundImage: AssetImage(
                  'assets/images/grano.jpg', // Cambia la ruta según tu imagen
                ),
              ),
              const SizedBox(
                  height: 20), // Separación entre la imagen y el texto
              const Text(
                'Información de la semilla de cultivo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                  height: 20), // Separación entre el título y el formulario
              _buildForm(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        _buildTextField('Id', '1'),
        const SizedBox(height: 10),
        _buildTextField('Nombre', 'Maíz'),
        const SizedBox(height: 10),
        _buildTextField('Tipo', 'Cereal'),
        const SizedBox(height: 10),
        _buildTextField('Fecha de siembra', '25/12/2024'),
        const SizedBox(height: 10),
        _buildTextField('Fecha de cosecha', '15/01/2025'),
        const SizedBox(height: 10),
        _buildTextField('Calidad', 'Alta'),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Acción para guardar
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Datos guardados')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFA5D6A7), // Verde claro
              ),
              child: const Text('Guardar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFCCBC), // Café claro
              ),
              child: const Text('Volver'),
            ),
          ],
        ),
      ],
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
