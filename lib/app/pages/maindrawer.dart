import 'package:flutter/material.dart';
import 'package:pontosolu/app/pages/authservice.dart';
import 'package:pontosolu/app/pages/cronogramas.dart';
import 'package:pontosolu/app/pages/horarios.dart';
import 'package:pontosolu/app/pages/notificacoes.dart';
import 'package:pontosolu/app/pages/updates.dart';
import 'package:pontosolu/app/pages/userpage.dart';
import 'package:provider/provider.dart';

class NavegationDrawerWidget extends StatelessWidget {
  const NavegationDrawerWidget({super.key});
  //final padding = const EdgeInsets.symmetric(horizontal: 20.0);

  @override
  Widget build(BuildContext context) {
    const name = 'Marcus Vinicius';
    const email = 'marcus.vinicius.03272000@abscorporativo.com.br';
    const urlImage =
        'https://assets.reedpopcdn.com/warner-bros-esta-desde-2013-a-tentar-criar-um-jogo-do-super-homem-1573554479719.jpg/BROK/thumbnail/1600x900/quality/100/warner-bros-esta-desde-2013-a-tentar-criar-um-jogo-do-super-homem-1573554479719.jpg';

    return Drawer(
      child: Material(
        color: Colors.blueAccent,
        child: ListView(
          children: [
            buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UserPage(
                          name: name,
                          urlImage: urlImage,
                        ),
                      ),
                    )),
            Column(
              children: [
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
                  onClicked: () => selectedItem(context, 1),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildMenuItem(
                  text: 'Updates',
                  icon: Icons.update,
                  onClicked: () => selectedItem(context, 2),
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
                  onClicked: () => selectedItem(context, 3),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildMenuItem(
                  text: 'Sair',
                  icon: Icons.logout,
                  onClicked: () => context.read<AuthService>().logout(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget buildHeader({
  required String urlImage,
  required String name,
  required String email,
  required VoidCallback onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: CircleAvatar(
                  radius: 30.0, backgroundImage: NetworkImage(urlImage)),
            ),
            const SizedBox(width: 10),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

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
    case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Cronogramas(),
        ),
      );
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Updates(),
        ),
      );
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Notificacoes(),
        ),
      );
      break;
    default:
  }
}
