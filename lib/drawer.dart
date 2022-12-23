import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavegationDrawerWidget extends StatelessWidget {
  const NavegationDrawerWidget({super.key});
  final padding = const EdgeInsets.symmetric(horizontal: 20.0);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blueAccent,
        child: ListView(
          padding: padding,
          children: [
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: 'Horarios',
              icon: Icons.schedule,
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: 'Notificações',
              icon: Icons.notifications,
            ),
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: 'Updates',
              icon: Icons.update,
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  const color = Colors.white;
  const hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color,),
    title: Text(text, style: const TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: (() {
      
    }),
  );
}
