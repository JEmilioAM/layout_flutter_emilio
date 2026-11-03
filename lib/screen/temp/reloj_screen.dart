import 'package:flutter/material.dart';
import '../widgets/barra_inferior_boton.dart';
import '../widgets/tarjeta_alarma.dart';

class RelojScreen extends StatelessWidget {
  const RelojScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // [Widget 1] Texto del título principal "Alarma"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Alarma',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
                 // [Widget 2] Botón de opciones (tres puntos verticales)
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Center(
              child: Column(
                children: [
                  // [Widget 3] Primera línea de texto del tiempo restante
                  Text(
                    'La alarma sonará en 21',
                    style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                   // [Widget 4] Segunda línea de texto del tiempo restante
                  Text(
                    'horas 57 minutos',
                    style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // [Widget 5, 6 y 7] Lista visual de alarmas
            const TarjetaAlarma(hora: '07:38', subtitulo: 'Una vez', activa: true),
            const SizedBox(height: 12),
            const TarjetaAlarma(hora: '09:27', subtitulo: 'Diariamente', activa: true),
            const SizedBox(height: 12),
            const TarjetaAlarma(hora: '09:37', subtitulo: 'Una vez', activa: false),
          ],
        ),
      ),
      //  [Widget 8] Botón flotante agregar
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF1E1E1E),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.blueAccent, size: 36),
      ),
      // [Widget 9, 10, 11 y 12] Barra completa de navegación inferior
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BarraInferiorBoton(icono: Icons.alarm, texto: 'Alarma', seleccionado: true),
            BarraInferiorBoton(icono: Icons.language, texto: 'Reloj mundial', seleccionado: false),
            BarraInferiorBoton(icono: Icons.hourglass_top, texto: 'Cronómetro', seleccionado: false),
            BarraInferiorBoton(icono: Icons.timer, texto: 'Temporizador', seleccionado: false),
          ],
        ),
      ),
    );
  }
}
