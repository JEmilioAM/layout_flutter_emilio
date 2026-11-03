import 'package:flutter/material.dart';

class TarjetaAlarma extends StatelessWidget {
  final String hora;
  final String subtitulo;
  final bool activa;

  const TarjetaAlarma({
    super.key,
    required this.hora,
    required this.subtitulo,
    required this.activa,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // [Widget 13 y 14] Textos informativos de la alarma
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hora,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: activa ? Colors.white : Colors.grey,
                ),
              ),
              Text(
                subtitulo,
                style: TextStyle(
                  fontSize: 14,
                  color: activa ? Colors.grey : Colors.grey.shade700,
                ),
              ),
            ],
          ),
          // [Widget 15] Toggle simulado con un IconButton
          IconButton(
            icon: Icon(
              activa ? Icons.toggle_on : Icons.toggle_off,
              color: activa ? Colors.blueAccent : Colors.grey,
              size: 48,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
