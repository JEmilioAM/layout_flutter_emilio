import 'package:flutter/material.dart';

class BarraInferiorBoton extends StatelessWidget {
  final IconData icono;
  final String texto;
  final bool seleccionado;

  const BarraInferiorBoton({
    super.key,
    required this.icono,
    required this.texto,
    required this.seleccionado,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icono,
          color: seleccionado ? Colors.white : Colors.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          texto,
          style: TextStyle(
            fontSize: 11,
            color: seleccionado ? Colors.white : Colors.grey,
          ),
        ),
      ],
    );
  }
}
