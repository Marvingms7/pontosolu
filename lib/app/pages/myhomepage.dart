import 'package:flutter/material.dart';
import 'package:pontosolu/app/models/horarios.dart';
import '../componentes/drawer/maindrawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  addPonto(DateTime value) {
    AddHorario(
      data: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavegationDrawerWidget(),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'PontoSolution',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.blueAccent),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: ElevatedButton(
                  onPressed: () => addPonto,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      fixedSize: const Size(50.0, 550.0)),
                  child: const Text('Ponto'),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(
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
                                backgroundColor: Colors.greenAccent,
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
                                backgroundColor: Colors.blueAccent,
                                fixedSize: const Size(100.0, 190.0)),
                            child: const Text('Pontos batidos Hoje'),
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
    );
  }
}
