import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:farmaciaapp/carrito.dart';
import 'detalle_medicamento_page.dart';

class CarritoComprasPage extends StatelessWidget {
  const CarritoComprasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Carrito>(
        builder: (context, carrito, child) {
          return carrito.items.isEmpty
              ? const Center(child: Text('No hay productos en el carrito'))
              : ListView.builder(
                  itemCount: carrito.items.length,
                  itemBuilder: (context, index) {
                    final medicamento = carrito.items[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: ListTile(
                        leading: Image.asset(
                          medicamento.imagenPath,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(medicamento.nombre),
                        subtitle:
                            Text('\$${medicamento.precio.toStringAsFixed(2)}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            carrito.eliminar(medicamento);
                          },
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetalleMedicamentoPage(
                                medicamento: medicamento,
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        child: ElevatedButton(
          onPressed: () {
            Provider.of<Carrito>(context, listen: false).realizarPedido();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Pedido realizado con éxito'),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            backgroundColor: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Proceder con la Compra',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
