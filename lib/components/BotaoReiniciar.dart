import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';
import 'CronometroBotao.dart';

class BotaoReiniciar extends StatelessWidget {
  const BotaoReiniciar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: CronometroBotao(
        texto: 'Reiniciar',
        icone: Icons.refresh,
        click: store.reiniciar,
      ),
    );
  }
}
