import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PontosBatidos extends StatefulWidget {
  const PontosBatidos({super.key});

  @override
  State<PontosBatidos> createState() => _PontosBatidosState();
}

class _PontosBatidosState extends State<PontosBatidos> {

  @override
  Widget build(BuildContext context) {
    final databaseReference = FirebaseDatabase.instance.ref();
    return StreamBuilder(
      stream: databaseReference.onValue,
      builder: (context, snap) {
        if (snap.hasData && !snap.hasError) {
          // Use the data to build the UI
          DataSnapshot snapshot = snap.data!.snapshot;
          var data = snapshot.value;
          return Text(data.toString());
        }
        // Handle any errors that occurred
        return Text("Error: ${snap.error}");
      },
    );
  }
}