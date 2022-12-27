import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddHorario extends StatelessWidget {
  AddHorario({
    super.key,
    required this.data,
  });
  final DateTime data;

  @override
  Widget build(BuildContext context) {
    CollectionReference data = FirebaseFirestore.instance.collection('horario');

    Future<void> addHorario() async {
      data
          .add({
            'data': data,
          })
          .then((value) => print('data adicionada'))
          .catchError((error) => print('erro'));
    }

    return const Text('Add horario');
  }
}
