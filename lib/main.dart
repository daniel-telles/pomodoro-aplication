import 'package:flutter/material.dart';
import 'package:pomodoro_application/pages/Pomodoro.dart';
import 'package:pomodoro_application/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import './store/pomodoro.store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<PomodoroStore>(create: (_) => PomodoroStore())],
      child: MaterialApp(
        title: 'Pomodoro',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Pomodoro(),
      ),
    );
  }
}

// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:pomodoro_application/store/contador.store.dart';

// final store = ContadorStore();

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Contador'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Observer(
//               builder: (_) => Text(
//                 '${store.contador}',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: store.incrementar,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
