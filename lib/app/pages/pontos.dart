import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Pontos extends StatelessWidget {
  const Pontos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(
                          150.0,
                          50.0,
                          150.0,
                          50.0,
                        ),
                        backgroundColor: Colors.greenAccent,
                        elevation: 10,
                        shadowColor: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      icon: const Icon(
                        Icons.save,
                        size: 20,
                      ),
                      label: const Text('Ponto'),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(
                          150.0,
                          50.0,
                          150.0,
                          50.0,
                        ),
                        elevation: 10,
                        shadowColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Almoço'),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(
                          150.0,
                          50.0,
                          150.0,
                          50.0,
                        ),
                        backgroundColor: Colors.amberAccent,
                        elevation: 10,
                        shadowColor: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Retorno'),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(
                          150.0,
                          50.0,
                          150.0,
                          50.0,
                        ),
                        backgroundColor: Colors.redAccent,
                        elevation: 10,
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Saida'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
