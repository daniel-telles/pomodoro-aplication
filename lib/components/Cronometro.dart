import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_application/components/BotaoIniciar.dart';
import 'package:pomodoro_application/components/BotaoParar.dart';
import 'package:pomodoro_application/components/BotaoReiniciar.dart';
import 'package:pomodoro_application/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  final botaoInicar = const BotaoIniciar();
  final botaoParar = const BotaoParar();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (_) => Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.estaTrabalhando()
                  ? 'Hora de trabalhar'
                  : 'Hora de descansar',
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
            const SizedBox(height: 30),
            Text(
              '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
              style: const TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !store.iniciado ? const BotaoIniciar() : const BotaoParar(),
                const BotaoReiniciar()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
