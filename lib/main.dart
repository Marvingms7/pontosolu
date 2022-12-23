import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PontoSolution',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 172, 171, 168),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(50.0, 550.0))),
                    child: const Text('Ponto'),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
                  height: 170.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: FractionallySizedBox(
                          widthFactor: 1.0,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(1.0, 3.0, 1.5, 1.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(100.0, 190.0)),
                              child: const Text('Sincronizar'),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: FractionallySizedBox(
                          widthFactor: 1.0,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(1.5, 3.0, 1.0, 1.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(100.0, 190.0)),
                              child: const Text('Sincronizar'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
