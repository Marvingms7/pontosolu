import 'package:flutter/material.dart';
import 'package:pontosolu/app/pages/authcheck.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      home: AuthCheck(),
    );
  }
}
