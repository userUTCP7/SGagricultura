import 'package:flutter/material.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubicación'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen circular en la parte superior
            const CircleAvatar(
              radius: 80, // Tamaño del círculo
              backgroundImage: AssetImage(
                'assets/images/mapa.jpg', // Ruta de la imagen
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'UBICACIÓN',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTextField('Id', '101'),
                const SizedBox(height: 10),
                _buildTextField('Nombre', 'Campo Norte'),
                const SizedBox(height: 10),
                _buildTextField('Latitud', '-0.180653'),
                const SizedBox(height: 10),
                _buildTextField('Longitud', '-78.467838'),
              ],
            ),
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
        ),
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
