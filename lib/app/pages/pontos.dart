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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.fromLTRB(150.0, 40.0, 150.0, 40.0)),
                child: const Text('Entrada'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.fromLTRB(150.0, 40.0, 150.0, 40.0)),
                child: const Text('Almoço'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.fromLTRB(150.0, 40.0, 150.0, 40.0)),
                child: const Text('Retorno'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.fromLTRB(150.0, 40.0, 150.0, 40.0)),
                child: const Text('Saida'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
