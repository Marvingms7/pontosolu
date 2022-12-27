import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../componentes/drawer/maindrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    CollectionReference data = FirebaseFirestore.instance.collection('data');
  
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
                  onPressed: () => setState(() {
                    data.doc().set({'data': DateTime.now()});
                  }),
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
