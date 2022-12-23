import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'horarios.dart';

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
              text: 'Horários',
              icon: Icons.schedule,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Cronogramas',
              icon: Icons.timeline,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Updates',
              icon: Icons.update,
            ),
            const SizedBox(
              height: 24,
            ),
            const Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 24,
            ),
            buildMenuItem(
              text: 'Notificações',
              icon: Icons.notifications,
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Sair',
              icon: Icons.logout,
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
  VoidCallback? onClicked,
}) {
  const color = Colors.white;
  const hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(text, style: const TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Horarios(),
        ),
      );
      break;
    default:
  }
}
