import 'package:flutter/material.dart';
import 'plantillamenu.dart'; // ✅ Se importa la plantilla
import 'mapa.dart';
import 'cultivo.dart';
import 'grano.dart';
import 'submenu_sensores.dart';
import 'main.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlantillaMenu(
      items: [
        MenuItem(
          icon: Icons.sensors,
          label: 'Sensores',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SubmenuSensores()),
            );
          },
        ),
        MenuItem(
          icon: Icons.location_on,
          label: 'Ubicación',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MapaPage()),
            );
          },
        ),
        MenuItem(
          icon: Icons.grain,
          label: 'Semilla de cultivo',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GranoPage()),
            );
          },
        ),
        MenuItem(
          icon: Icons.agriculture,
          label: 'Datos de cultivo',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CultivoPage()),
            );
          },
        ),
        MenuItem(
          icon: Icons.arrow_back,
          label: 'Volver',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
      ],
    );
  }
}
