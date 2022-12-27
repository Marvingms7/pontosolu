import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pontosolu/firebase/firebase_options.dart';
import 'pages/myhomepage.dart';
//import 'package:intl/intl.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
