import 'medicamentos.dart';

class Pedido {
  final List<Medicamento> medicamentos;
  final DateTime fecha;

  Pedido({required this.medicamentos, required this.fecha});
}
