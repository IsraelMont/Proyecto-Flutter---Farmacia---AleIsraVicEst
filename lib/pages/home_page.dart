import 'package:farmaciaapp/medicamentos.dart';
import 'package:farmaciaapp/pages/carrito_compras_page.dart';
import 'package:farmaciaapp/pages/historial_pedidos_page.dart';
import 'package:farmaciaapp/pages/perfil_page.dart';
import 'package:farmaciaapp/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../category_title.dart';
import 'search_results_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String _searchQuery = '';
  final Logger _logger = Logger();
  List<Medicamento> _searchResults = [];

  static const List<Widget> _widgetOptions = <Widget>[
    MedicamentosList(),
    SearchPage(),
    CarritoComprasPage(),
    PerfilPage(),
    HistorialPedidosPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  void _performSearch() {
    setState(() {
      _searchResults = medicamentos.where((medicamento) {
        return medicamento.nombre
            .toLowerCase()
            .contains(_searchQuery.toLowerCase());
      }).toList();
    });

    _logger.d('Buscando medicamentos que coincidan con: $_searchQuery');
    Navigator.of(context).pop();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SearchResultsPage(searchResults: _searchResults),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text(
          _selectedIndex == 0
              ? 'Medicamentos'
              : _selectedIndex == 1
                  ? 'Buscar'
                  : _selectedIndex == 2
                      ? 'Carrito'
                      : _selectedIndex == 3
                          ? 'Perfil'
                          : 'Historial',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        actions: _selectedIndex == 1
            ? [
                IconButton(
                  onPressed: () {
                    _showSearchDialog(context);
                  },
                  icon: const Icon(Icons.search, color: Colors.white),
                ),
              ]
            : null,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historial',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        elevation: 10,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  void _showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Buscar Medicamentos'),
          content: TextField(
            decoration: const InputDecoration(
                hintText: 'Ingrese el nombre del medicamento'),
            onChanged: _updateSearchQuery,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: _performSearch,
              child: const Text('Buscar'),
            ),
          ],
        );
      },
    );
  }
}

class MedicamentosList extends StatelessWidget {
  const MedicamentosList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: const [
        CategoryTitle(
            title: 'Analgesicos',
            imagePath: 'assets/images/analgesicos.png',
            color: Colors.blue),
        CategoryTitle(
            title: 'Antibioticos',
            imagePath: 'assets/images/antibioticos.png',
            color: Colors.green),
        CategoryTitle(
            title: 'Antiinflamatorios',
            imagePath: 'assets/images/Anti.png',
            color: Colors.orange),
        CategoryTitle(
            title: 'Antivirales',
            imagePath: 'assets/images/Antivirales.png',
            color: Colors.blue),
        CategoryTitle(
            title: 'Antifúngicos',
            imagePath: 'assets/images/Antifúngicos.png',
            color: Colors.purple),
        CategoryTitle(
            title: 'Antidepresivos',
            imagePath: 'assets/images/Antidepresivos.png',
            color: Colors.indigo),
        CategoryTitle(
            title: 'Fotoprotectores',
            imagePath: 'assets/images/fotoprotectores.png',
            color: Colors.orange),
        CategoryTitle(
            title: 'Anticonvulsivos',
            imagePath: 'assets/images/Anticonvulsivos.png',
            color: Colors.brown),
        CategoryTitle(
            title: 'Diuréticos',
            imagePath: 'assets/images/Diuréticos.png',
            color: Colors.deepOrangeAccent),
        CategoryTitle(
            title: 'Antihipertensivos',
            imagePath: 'assets/images/Antihipertensivos.png',
            color: Colors.blueAccent),
      ],
    );
  }
}
