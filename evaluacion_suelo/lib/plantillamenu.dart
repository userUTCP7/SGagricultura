import 'package:flutter/material.dart';

class PlantillaMenu extends StatelessWidget {
  final List<MenuItem> items;

  const PlantillaMenu({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
          children: items.map((item) => _buildMenuItem(context, item)).toList(),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, MenuItem item) {
    return GestureDetector(
      onTap: item.onTap,
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
            Icon(item.icon, size: 50, color: const Color(0xFF1B5E20)),
            const SizedBox(height: 10),
            Text(
              item.label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B5E20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  MenuItem({required this.icon, required this.label, required this.onTap});
}
