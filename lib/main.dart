import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pontosolu/app/pages/authservice.dart';
import 'package:pontosolu/app/pages/loginpage.dart';
import 'package:provider/provider.dart';

import 'app/pages/meuaplicativo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthService>(create: (_) => AuthService()),
      Provider<LoginPageState>(create: (_) => LoginPageState()),
    ],
    child: const MyApp(),
  ));
}
