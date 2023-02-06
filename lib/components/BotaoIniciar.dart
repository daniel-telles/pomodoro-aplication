import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';
import 'CronometroBotao.dart';

class BotaoIniciar extends StatelessWidget {
  const BotaoIniciar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: CronometroBotao(
        texto: 'Iniciar',
        icone: Icons.play_arrow,
        click: store.iniciar,
      ),
    );
  }
}
