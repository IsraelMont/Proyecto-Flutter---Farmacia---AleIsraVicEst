import 'package:flutter/material.dart';
import 'package:farmaciaapp/medicamentos.dart';
import 'package:farmaciaapp/pages/detalle_medicamento_page.dart';

class MedicamentosPage extends StatelessWidget {
  final String categoria;

  const MedicamentosPage({super.key, required this.categoria});

  @override
  Widget build(BuildContext context) {
    // Filtrar los medicamentos según la categoría seleccionada
    final List<Medicamento> medicamentosFiltrados = medicamentos
        .where((medicamento) => medicamento.categoria == categoria)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoria),
      ),
      body: ListView.builder(
        itemCount: medicamentosFiltrados.length,
        itemBuilder: (context, index) {
          final medicamento = medicamentosFiltrados[index];
          return ListTile(
            leading: Image.asset(
              medicamento.imagenPath,
              width: 50,
              height: 50,
            ),
            title: Text(medicamento.nombre),
            onTap: () {
              // Navegar a la página de detalles del medicamento
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetalleMedicamentoPage(medicamento: medicamento),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
