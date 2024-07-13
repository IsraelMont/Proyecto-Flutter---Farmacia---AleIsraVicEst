import 'package:farmaciaapp/pedido.dart';
import 'package:flutter/material.dart';

class PedidoDetallePage extends StatelessWidget {
  final Pedido pedido;

  const PedidoDetallePage({super.key, required this.pedido});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido del ${pedido.fecha.toLocal()}'),
      ),
      body: ListView.builder(
        itemCount: pedido.medicamentos.length,
        itemBuilder: (context, index) {
          final medicamento = pedido.medicamentos[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              leading: Image.asset(
                medicamento.imagenPath,
                width: 50,
                height: 50,
              ),
              title: Text(medicamento.nombre),
              subtitle: Text('\$${medicamento.precio.toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}
