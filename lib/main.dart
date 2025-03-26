import 'package:flutter/material.dart';
import 'package:galeria_flutter/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notitas UwU',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        // Establecemos la fuente de la aplicación
        // Otros estilos de tema que puedes configurar
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Si necesitas definir colores o estilos globales, también puedes hacerlo aquí.
      ),
    );
  }
}
