import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String image;
  const SecondPage({super.key, required this.image});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,  // Fondo transparente para que se vea la sombra del cuadro
      insetPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 80), // Margen del cuadro de diálogo
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),  // Animación para la expansión
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Ajusta el tamaño a los elementos contenidos
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Regresa a la página anterior
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Hero(tag: widget.image, child: Image.network(widget.image)),
              const Divider(),
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
                    controller: _noteController,
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
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadowColor: Colors.black.withOpacity(0.5),
                    elevation: 10,
                  ),
                  onPressed: () {
                    // Crear una nueva nota para la imagen seleccionada
                    final note = {
                      'image': widget.image,
                      'text': _noteController.text,
                    };
                    // Aquí puedes agregar código para guardar la nota en una lista o base de datos
                    print('Nota Guardada: $note'); // Para ver la nota guardada en la consola
                    Navigator.pop(context); // Volver a la pantalla principal
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
      ),
    );
  }
}
