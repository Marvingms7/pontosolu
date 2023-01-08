import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pontosolu/app/pages/authservice.dart';
import 'package:provider/provider.dart';
import 'app/firebase/firebase_options.dart';
import 'app/pages/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
    create: (context) => AuthService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: MyHomePage(),
      home: LoginPage(),
    );
  }
}
