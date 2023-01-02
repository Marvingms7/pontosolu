import 'package:flutter/material.dart';

class Pontos extends StatelessWidget {
  const Pontos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Entrada')),
              ElevatedButton(onPressed: () {}, child: const Text('Almoço')),
              ElevatedButton(onPressed: () {}, child: const Text('Retorno')),
              ElevatedButton(onPressed: () {}, child: const Text('Saida')),
            ],
          ),
        ),
      ),
    );
  }
}
