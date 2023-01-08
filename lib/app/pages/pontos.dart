import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pontosolu/app/models/data.dart';
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
    );
    return;
  }
  void quickalert2(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => almoco(),
    );
    return;
  }
  void quickalert3(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => retorno(),
    );
    return;
  }
  void quickalert4(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => saida(),
    );
    return;
  }

  static DateTime hoje = DateTime.now();
  final mes = DateFormat.yMMMM().format(hoje);
  final dia = DateFormat.MMMEd().format(hoje);
  final hora = DateFormat.Hm().format(hoje);

  entrada() {
    String user = '08770202303';
    Date data = Date(
      mes: mes,
      dia: dia,
      semana: dia,
      hora: hora,
    );
  
    setState(() {
      CollectionReference estatico =
          FirebaseFirestore.instance.collection(data.mes);
      estatico.doc(data.dia).collection('Usuarios').doc(user).set({
        'Entrada': data.dia,
      });
    });
    return;
  }
   almoco() {
    String user = '08770202303';
    Date data = Date(
      mes: mes,
      dia: dia,
      semana: dia,
      hora: hora,
    );
  
    setState(() {
      CollectionReference estatico =
          FirebaseFirestore.instance.collection(data.mes);
      estatico.doc(data.dia).collection('Usuarios').doc(user).set({
        'Almoco': data.dia,
      });
    });
    return;
  }
   retorno() {
    String user = '08770202303';
    Date data = Date(
      mes: mes,
      dia: dia,
      semana: dia,
      hora: hora,
    );
  
    setState(() {
      CollectionReference estatico =
          FirebaseFirestore.instance.collection(data.mes);
      estatico.doc(data.dia).collection('Usuarios').doc(user).set({
        'Retorno': data.dia,
      });
    });
    return;
  }
   saida() {
    String user = '08770202303';
    Date data = Date(
      mes: mes,
      dia: dia,
      semana: dia,
      hora: hora,
    );
  
    setState(() {
      CollectionReference estatico =
          FirebaseFirestore.instance.collection(data.mes);
      estatico.doc(data.dia).collection('Usuarios').doc(user).set({
        'Saida': data.dia,
      });
    });
    return;
  }

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
                  child: ElevatedButton.icon(
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
                    onPressed: () => quickalert2(context, QuickAlertType.confirm),
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
                    onPressed: () => quickalert3(context, QuickAlertType.confirm),
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
                    onPressed: () => quickalert4(context, QuickAlertType.confirm),
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
