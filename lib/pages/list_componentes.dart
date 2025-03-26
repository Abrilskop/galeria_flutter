// list_componentes.dart

import 'package:flutter/material.dart';

class ListComponentes extends StatelessWidget {
  const ListComponentes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Componentes de Flutter'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        children: [
          // 1. AnimatedContainer
          ListTile(
            title: const Text('AnimatedContainer'),
            subtitle: const Text(
                'Este widget permite realizar animaciones de cambios de propiedades como el tamaño, la posición o el color.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          '¡Este es un AnimatedContainer!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // 2. GestureDetector
          ListTile(
            title: const Text('GestureDetector'),
            subtitle: const Text(
                'Detecta gestos en el área de su hijo, como toques, desplazamientos o gestos complejos.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Cierra el cuadro de diálogo
                    },
                    child: Dialog(
                      backgroundColor: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        color: Colors.greenAccent,
                        child: const Text(
                          '¡Este es un GestureDetector!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // 3. Hero
          ListTile(
            title: const Text('Hero'),
            subtitle: const Text(
                'Proporciona una animación entre pantallas al compartir una imagen o un widget entre ellas.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Hero(
                      tag: 'hero_tag',
                      child: Image.network(
                        'https://via.placeholder.com/150',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // 4. ClipRRect
          ListTile(
            title: const Text('ClipRRect'),
            subtitle: const Text(
                'Recorta a su hijo en un rectángulo redondeado, permitiendo bordes curvados.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://via.placeholder.com/150',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // 5. TextField
          ListTile(
            title: const Text('TextField'),
            subtitle: const Text(
                'Permite al usuario ingresar texto. Se utiliza comúnmente para formularios.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Escribe algo...',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // 6. ElevatedButton
          ListTile(
            title: const Text('ElevatedButton'),
            subtitle: const Text(
                'Crea un botón con un fondo elevado, proporcionando una apariencia de botón flotante con sombra.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context); // Cierra el cuadro de diálogo
                      },
                      child: const Text('¡Botón Elevado!'),
                    ),
                  );
                },
              );
            },
          ),

          // 7. Dialog
          ListTile(
            title: const Text('Dialog'),
            subtitle: const Text(
                'Muestra un cuadro de diálogo modal, que cubre parcialmente la pantalla.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.black.withOpacity(0.8),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        '¡Este es un Dialog!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // 8. IconButton
          ListTile(
            title: const Text('IconButton'),
            subtitle: const Text(
                'Combinación de un ícono y una acción de botón, utilizado para ejecutar acciones cuando es presionado.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: IconButton(
                      icon: const Icon(Icons.info, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context); // Cierra el cuadro de diálogo
                      },
                    ),
                  );
                },
              );
            },
          ),

          // 9. BoxShadow
          ListTile(
            title: const Text('BoxShadow'),
            subtitle: const Text(
                'Efecto visual que agrega sombra alrededor de un widget, dándole un efecto de profundidad.'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(0, 4),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const Text(
                        '¡Este es un BoxShadow!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // 10. TextEditingController
          ListTile(
            title: const Text('TextEditingController'),
            subtitle: const Text(
                'Controla el texto de un TextField, permitiendo obtener y modificar el texto ingresado.'),
            onTap: () {
              TextEditingController _controller = TextEditingController();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: 'Escribe algo...',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              print(_controller.text); // Imprime el texto ingresado
                              Navigator.pop(context); // Cierra el cuadro de diálogo
                            },
                            child: const Text('Mostrar texto'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListComponentes(),
  ));
}
