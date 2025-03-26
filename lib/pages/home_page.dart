import 'package:flutter/material.dart';
import 'package:galeria_flutter/data/images_data.dart'; // Importamos las imágenes
import 'list_componentes.dart';  // Importa la página con la lista de componentes

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notitas Uwu',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 172, 73, 116).withOpacity(0.8),
        elevation: 10,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
          // Botón para navegar a ListComponentes
          IconButton(
            icon: const Icon(Icons.list, color: Colors.white),  // Ícono de lista
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListComponentes()),  // Navega a la página de componentes
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 255, 198, 227), Color.fromARGB(255, 255, 155, 218)],
          ),
        ),
        child: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(4),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: _imagesList(context), // Usamos la función para crear las imágenes
        ),
      ),
    );
  }

  List<Widget> _imagesList(BuildContext context) {
    List<Widget> imagesWidgetsList = [];

    for (var image in images) {
      imagesWidgetsList.add(GestureDetector(
        onTap: () {
          // Usamos showDialog para abrir la ventana emergente
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: const Color.fromARGB(0, 199, 173, 255),  // Fondo transparente
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500), // Duración de la animación
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        offset: Offset(0, 10),
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,  // Evita que el cuadro de diálogo sea más grande de lo necesario
                    children: [
                      Hero(
                        tag: image,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            image,
                            width: MediaQuery.of(context).size.width * 0.8,  // Establecemos un tamaño máximo para la imagen
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                offset: const Offset(0, 10),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: TextEditingController(),  // No necesitas un controlador persistente
                            style: const TextStyle(color: Colors.white),
                            maxLines: 5,
                            decoration: const InputDecoration(
                              hintText: 'Escribe una nota...',
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadowColor: const Color.fromARGB(255, 229, 140, 140).withOpacity(0.5),
                            elevation: 10,
                          ),
                          onPressed: () {
                            // Aquí puedes agregar la lógica para guardar la nota
                            Navigator.pop(context); // Cierra la ventana emergente
                          },
                          child: const Text(
                            'Guardar Nota',
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 253, 188, 216).withOpacity(0.5),
                  offset: const Offset(0, 10),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Hero(
              tag: image,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ));
    }

    return imagesWidgetsList;
  }
}
