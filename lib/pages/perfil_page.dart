import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // Fondo azul gris claro
      body: SingleChildScrollView(
        // Añadir el SingleChildScrollView aquí
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blueGrey, // Fondo del avatar
                backgroundImage: AssetImage('assets/images/user.JPG'),
              ),
              const SizedBox(height: 20),
              _itemProfile('Nombre', 'Alexa Mendoza', CupertinoIcons.person),
              const SizedBox(height: 10),
              _itemProfile('Teléfono', '505-77532119', CupertinoIcons.phone),
              const SizedBox(height: 10),
              _itemProfile('Dirección', 'Managua, Bello Horizonte',
                  CupertinoIcons.location),
              const SizedBox(height: 10),
              _itemProfile('Correo Electrónico', 'Alexa1@gmail.com',
                  CupertinoIcons.mail),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para editar el perfil
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
                    'Editar Perfil',
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
        trailing: const Icon(
          Icons.arrow_forward,
          color: Colors.blueGrey, // Icono de flecha azul gris
        ),
        tileColor: Colors.white,
      ),
    );
  }
}
