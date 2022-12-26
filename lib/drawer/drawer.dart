import 'package:flutter/material.dart';
import 'package:pontosolu/drawer/pages/cronogramas.dart';
import 'package:pontosolu/drawer/pages/notificacoes.dart';
import 'package:pontosolu/drawer/pages/updates.dart';
import 'package:pontosolu/drawer/pages/userpage.dart';
import 'pages/horarios.dart';

class NavegationDrawerWidget extends StatelessWidget {
  const NavegationDrawerWidget({super.key});
  //final padding = const EdgeInsets.symmetric(horizontal: 20.0);

  @override
  Widget build(BuildContext context) {
    const name = 'Marcus Vinicius';
    const email = 'marcus.vinicius.03272000@abscorporativo.com.br';
    const urlImage =
        'https://lh3.googleusercontent.com/6uk_gb8x2_N5JeLrcOjYVY6a3FvaPkJosrAUb9fjTWMpUczwnkE4d3AaEl3dbehjLNKJIGbG0TVogwf9PX9CKQsJe6oQrPNJt3DyMfl32QAhLS_6ho694r4sTrH_92c2fbAEpGW-jyg7nRfJlRXgt48K2JYnEYX_5JdaXA-jiW-wC-DOVUtauhtpEr4Uqxk6c3jb6RF90fPs3FK7LfcNHnCGp2tce_J-PqFwi41IhKiW79vMN3VpBXuPnoZ7ANp5cDQg6koSS95t9cC4uz0idPkXK-HzvE2gZx8RuiWbY39YLHbN4YzFw_CjF52Zyyw6y8XQCbKqVUjPPm2rquj9CmEBAmz-wb3g20doQeU8rk4sLViEOkBIsEYgE3xYehk023ItIUOuvgLsqNDTsP-Sw3X8B9CnsETesSMAu1bx35SSwRjzM2WWfGI8ShgPXKF_LP6Ik2gmDlFOwRQceH92zaC7tpPyNYoDA4_pJMmBGUxlp8BNHXmJx6CLiblDI1wtPhgTxa02ESD9RFkuFDGQx17BH3kW5ybrq5fxKqAVTcjEY3LKVtk33XLHrVWXAIRTyoBYU_5Xtx-s9FUfJODhcAAV4VviWScrhy-v54PRKBDIfd1jhbyj_Wgi-e8VDS6zH4PFoWDvvygMQCYqTXd9l2mV6joDGCZWotDRggOiT7QMvUnFUp2DDCT5SUM2dC_fNDT403-yKjeim6psMiegJbQ-y2gc42aIs6dOwgaLm8bVUsTctd8g-WGugUoN-niAvAQlB88Bf42WpW7pnY6T5MIBQfH6iLJKBatDIsWyVvwDWqnJLUlUZyGr7TFI7zunxfGDsDuDSW7vZsXPIhCLLS7VjhsRwsAQJCIf5Lw-1tvVmAiPYt2NYQlDdnTTXYSnm4fcxk4SdK1bgzaMJujCa_xWOwaFte3eG3IGh0_AOj0uoTr6XA=w486-h649-no?authuser=0';

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
                        builder: (context) => UserPage(
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
