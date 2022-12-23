import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavegationDrawerWidget extends StatelessWidget {
  const NavegationDrawerWidget({super.key});
  final padding = const EdgeInsets.symmetric(horizontal: 20.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}