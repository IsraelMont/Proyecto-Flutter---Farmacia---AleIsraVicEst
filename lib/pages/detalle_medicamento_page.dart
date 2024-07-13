import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:farmaciaapp/medicamentos.dart';
import 'package:provider/provider.dart';
import 'package:farmaciaapp/carrito.dart'; // Importa la clase Carrito

class DetalleMedicamentoPage extends StatelessWidget {
  final Medicamento medicamento;

  const DetalleMedicamentoPage({super.key, required this.medicamento});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // Fondo azul gris claro
      appBar: AppBar(
        title: Text(medicamento.nombre),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blueGrey, // Color de fondo de la AppBar
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blueGrey, // Fondo del avatar
                backgroundImage: AssetImage(medicamento.imagenPath),
              ),
              const SizedBox(height: 20),
              _itemProfile(
                  'Nombre', medicamento.nombre, CupertinoIcons.capsule),
              const SizedBox(height: 10),
              _itemProfile(
                  'Categoría', medicamento.categoria, CupertinoIcons.tag),
              const SizedBox(height: 10),
              _itemProfile(
                  'Precio',
                  '\$${medicamento.precio.toStringAsFixed(2)}',
                  CupertinoIcons.money_dollar),
              const SizedBox(height: 10),
              _itemProfile(
                  'Descripción', medicamento.descripcion, CupertinoIcons.info),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Provider.of<Carrito>(context, listen: false)
                        .agregar(medicamento);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text('${medicamento.nombre} agregado al carrito'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: Colors.blueGrey, // Botón azul gris
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Bordes redondeados
                    ),
                  ),
                  child: const Text(
                    'Agregar al Carrito',
                    style: TextStyle(
                      color: Colors.white, // Texto blanco
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.blueGrey.withOpacity(.3), // Sombra azul gris
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.blueGrey[800], // Texto azul gris oscuro
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: Colors.blueGrey[600], // Subtítulo azul gris medio
          ),
        ),
        leading: Icon(
          iconData,
          color: Colors.blueGrey, // Icono azul gris
        ),
        tileColor: Colors.white,
      ),
    );
  }
}
