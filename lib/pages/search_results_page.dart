import 'package:farmaciaapp/medicamentos.dart';
import 'package:farmaciaapp/pages/detalle_medicamento_page.dart';
import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final List<Medicamento> searchResults;

  const SearchResultsPage({super.key, required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados de Búsqueda'),
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          final medicamento = searchResults[index];
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
