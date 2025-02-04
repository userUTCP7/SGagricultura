import 'package:flutter/material.dart';
import 'plantillamenu.dart'; // ✅ Importamos la plantilla
import 'sensorhumedad.dart';
import 'sensorph.dart';
import 'sensortemperatura.dart';
import 'menu.dart';

class SubmenuSensores extends StatelessWidget {
  const SubmenuSensores({super.key});

  @override
  Widget build(BuildContext context) {
    return PlantillaMenu(
      items: [
        MenuItem(
          icon: Icons.water_drop,
          label: 'Sensor PH',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SensorPHPage()),
            );
          },
        ),
        MenuItem(
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
        MenuItem(
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
        MenuItem(
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
    );
  }
}
