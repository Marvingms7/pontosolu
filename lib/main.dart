import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pontosolu/app/pages/authservice.dart';
import 'package:provider/provider.dart';

import 'app/pages/meuaplicativo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (context) => AuthService(),
    child: const MyApp(),
  ));
}
