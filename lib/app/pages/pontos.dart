import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pontosolu/app/models/data.dart';
import 'package:pontosolu/app/pages/authservice.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class Pontos extends StatefulWidget {
  const Pontos({super.key});

  @override
  State<Pontos> createState() => _PontosState();
}

class _PontosState extends State<Pontos> {
  void quickalert1(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => entrada(),
      text: 'Deseja bater o ponto?',
      title: 'Entrada',
      confirmBtnText: 'Sim',
      cancelBtnText: 'Não',
    );
    return;
  }

  void quickalert2(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => almoco(),
      text: 'Deseja bater o ponto?',
      title: 'Almoço',
      confirmBtnText: 'Sim',
      cancelBtnText: 'Não',
    );
    return;
  }

  void quickalert3(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => retorno(),
      text: 'Deseja bater o ponto?',
      title: 'Retorno',
      confirmBtnText: 'Sim',
      cancelBtnText: 'Não',
    );
    return;
  }

  void quickalert4(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => saida(),
      text: 'Deseja bater o ponto?',
      title: 'Saida',
      confirmBtnText: 'Sim',
      cancelBtnText: 'Não',
    );
    return;
  }

  static DateTime hoje = DateTime.now();
  final mes = DateFormat.yMMMM().format(hoje);
  final dia = DateFormat.MMMEd().format(hoje);
  final hora = DateFormat.Hm().format(hoje);

  entrada() {
    final contexto = Provider.of<AuthService>(context, listen: false);
    FirebaseFirestore.instance
        .collection('Usuarios')
        .doc(contexto.usuario!.uid)
        .get()
        .then(
      (value) {
        // print(value.data());
        Map<String, dynamic>? v = value.data();
        // print(v!.values.elementAt(0));
        final nome = v!.values.elementAt(0);
        setState(() {
          Date data = Date(
            mes: mes,
            dia: dia,
            semana: dia,
            hora: hora,
          );
          CollectionReference estatico =
              FirebaseFirestore.instance.collection(data.mes);
          estatico
              .doc(data.dia)
              .collection('Usuarios')
              .doc(contexto.usuario?.uid)
              .set({
            'Nome': nome,
            'Entrada': data.hora,
          }, SetOptions(merge: true));
        });
      },
    );
  }

  almoco() {
    final contexto = Provider.of<AuthService>(context, listen: false);
    FirebaseFirestore.instance
        .collection('Usuarios')
        .doc(contexto.usuario!.uid)
        .get()
        .then(
      (value) {
        // print(value.data());
        Map<String, dynamic>? v = value.data();
        // print(v!.values.elementAt(0));
        final nome = v!.values.elementAt(0);
        setState(() {
          Date data = Date(
            mes: mes,
            dia: dia,
            semana: dia,
            hora: hora,
          );
          CollectionReference estatico =
              FirebaseFirestore.instance.collection(data.mes);
          estatico
              .doc(data.dia)
              .collection('Usuarios')
              .doc(contexto.usuario?.uid)
              .set({
            'Nome': nome,
            'Almoço': data.hora,
          }, SetOptions(merge: true));
        });
      },
    );
  }

  retorno() {
   final contexto = Provider.of<AuthService>(context, listen: false);
    FirebaseFirestore.instance
        .collection('Usuarios')
        .doc(contexto.usuario!.uid)
        .get()
        .then(
      (value) {
        // print(value.data());
        Map<String, dynamic>? v = value.data();
        // print(v!.values.elementAt(0));
        final nome = v!.values.elementAt(0);
        setState(() {
          Date data = Date(
            mes: mes,
            dia: dia,
            semana: dia,
            hora: hora,
          );
          CollectionReference estatico =
              FirebaseFirestore.instance.collection(data.mes);
          estatico
              .doc(data.dia)
              .collection('Usuarios')
              .doc(contexto.usuario?.uid)
              .set({
            'Nome': nome,
            'Retorno': data.hora,
          }, SetOptions(merge: true));
        });
      },
    );
  }

  saida() {
  final contexto = Provider.of<AuthService>(context, listen: false);
    FirebaseFirestore.instance
        .collection('Usuarios')
        .doc(contexto.usuario!.uid)
        .get()
        .then(
      (value) {
        // print(value.data());
        Map<String, dynamic>? v = value.data();
        // print(v!.values.elementAt(0));
        final nome = v!.values.elementAt(0);
        setState(() {
          Date data = Date(
            mes: mes,
            dia: dia,
            semana: dia,
            hora: hora,
          );
          CollectionReference estatico =
              FirebaseFirestore.instance.collection(data.mes);
          estatico
              .doc(data.dia)
              .collection('Usuarios')
              .doc(contexto.usuario?.uid)
              .set({
            'Nome': nome,
            'Saida': data.hora,
          }, SetOptions(merge: true));
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entradas e saidas',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
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
                    onPressed: () =>
                        quickalert1(context, QuickAlertType.confirm),
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
                    child: const Text('Entrada'),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    onPressed: () =>
                        quickalert2(context, QuickAlertType.confirm),
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
                    onPressed: () =>
                        quickalert3(context, QuickAlertType.confirm),
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
                    onPressed: () =>
                        quickalert4(context, QuickAlertType.confirm),
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
    );
  }
}
