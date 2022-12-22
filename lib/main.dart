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
        padding: const EdgeInsets.all(0.5),
        child: Container(
          color: Colors.amber,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Flexible(
                    child: FractionallySizedBox(
                      widthFactor: 1.0,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.check),
                          label: const Text('Bater Ponto')),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FractionallySizedBox(
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.check),
                          label: const Text('Sincronizar')),
                    ),
                    FractionallySizedBox(
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.check),
                          label: const Text('Sincronizar')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
