import 'package:flutter/material.dart';
import 'dart:async';

class Plantilla extends StatefulWidget {
  final String title;
  final Widget body;

  const Plantilla({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  _PlantillaState createState() => _PlantillaState();
}

class _PlantillaState extends State<Plantilla> {
  List<List<Color>> colorThemes = [
    [Colors.green[300]!, Colors.brown[200]!, Colors.pink[100]!],
    [Colors.green[400]!, Colors.brown[300]!, Colors.pink[200]!],
    [Colors.green[500]!, Colors.brown[400]!, Colors.pink[300]!],
  ];

  int _colorIndex = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _colorIndex = (_colorIndex + 1) % colorThemes.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green[700], // Verde oscuro para la barra
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 3),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colorThemes[_colorIndex],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: widget.body, // Contenido dinámico con mejor espaciado
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[700]),
              child: Text('Menú',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Configuración'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
