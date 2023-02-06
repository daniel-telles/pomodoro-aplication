import 'package:flutter/material.dart';
import 'Cronometro.dart';
import 'package:pomodoro_application/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

import 'CronometroBotao.dart';

class BotaoParar extends StatelessWidget {
  const BotaoParar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: CronometroBotao(
        texto: 'Parar',
        icone: Icons.stop,
        click: store.parar,
      ),
    );
  }
}
