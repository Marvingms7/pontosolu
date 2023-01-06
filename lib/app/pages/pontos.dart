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
  void quickalert(context, QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      onConfirmBtnTap: () async => baterponto(),
    );
    return;
  }

  static DateTime hoje = DateTime.now();
  final mes = DateFormat.yMMMM().format(hoje);
  final dia = DateFormat.MMMEd().format(hoje);
  final hora = DateFormat.Hm().format(hoje);

  baterponto() {
    String user = '08770202303';
    Date data = Date(
      mes: mes,
      dia: dia,
      semana: dia,
      hora: hora,
    );
    entrada() {
      return data.hora;
    }

    setState(() {
      CollectionReference estatico =
          FirebaseFirestore.instance.collection(data.mes);
      estatico.doc(data.dia).collection('Usuarios').doc(user).set({
        'entrada': entrada(),
        'Almoco': null,
        'Retorno': null,
        'Saida': null,
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
                        quickalert(context, QuickAlertType.confirm),
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
    );
  }
}
