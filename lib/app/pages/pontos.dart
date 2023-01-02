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
              Flexible(
                flex: 1,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(
                        150.0,
                        40.0,
                        150.0,
                        40.0,
                      ),
                      backgroundColor: Colors.greenAccent,
                      elevation: 10,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Entrada'),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(
                      150.0,
                      40.0,
                      150.0,
                      40.0,
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
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(
                      150.0,
                      40.0,
                      150.0,
                      40.0,
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
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(
                      150.0,
                      40.0,
                      150.0,
                      40.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
