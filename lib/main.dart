import 'package:farmaciaapp/carrito.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/carrito_compras_page.dart';
import 'pages/historial_pedidos_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/perfil_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Carrito(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmacia',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomePage(),
        '/carrito': (context) => const CarritoComprasPage(),
        '/historial': (context) => const HistorialPedidosPage(),
        '/perfil': (context) => const PerfilPage(),
      },
    );
  }
}
