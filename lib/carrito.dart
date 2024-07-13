import 'package:flutter/foundation.dart';
import 'medicamentos.dart';
import 'pedido.dart';

class Carrito with ChangeNotifier {
  final List<Medicamento> _items = [];
  final List<Pedido> _historial = [];

  List<Medicamento> get items => _items;
  List<Pedido> get historial => _historial;

  void agregar(Medicamento medicamento) {
    _items.add(medicamento);
    notifyListeners();
  }

  void eliminar(Medicamento medicamento) {
    _items.remove(medicamento);
    notifyListeners();
  }

  void limpiar() {
    _items.clear();
    notifyListeners();
  }

  void realizarPedido() {
    _historial
        .add(Pedido(medicamentos: List.from(_items), fecha: DateTime.now()));
    limpiar();
    notifyListeners();
  }
}
