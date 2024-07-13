import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:farmaciaapp/carrito.dart';
import 'pedido_detalle_page.dart';

class HistorialPedidosPage extends StatelessWidget {
  const HistorialPedidosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Carrito>(
        builder: (context, carrito, child) {
          return carrito.historial.isEmpty
              ? const Center(child: Text('No hay pedidos realizados'))
              : ListView.builder(
                  itemCount: carrito.historial.length,
                  itemBuilder: (context, index) {
                    final pedido = carrito.historial[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: ListTile(
                        title: Text(
                            'Pedido ${index + 1} - ${pedido.fecha.toLocal()}'),
                        subtitle:
                            Text('${pedido.medicamentos.length} productos'),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_forward,
                              color: Colors.blueGrey),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    PedidoDetallePage(pedido: pedido),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
