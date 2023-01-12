import 'package:flutter/material.dart';
import 'package:pontosolu/app/pages/authservice.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey();
  final email = TextEditingController();
  final senha = TextEditingController();
  final user = TextEditingController();

  bool islogin = true;
  late String titulo;
  late String actionButton;
  late String toggleButton;

  @override
  void initState() {
    super.initState();
    setFormAction(true);
  }

  setFormAction(bool acao) {
    setState(() {
      islogin = acao;
      if (islogin) {
        titulo = 'Bem vindo';
        actionButton = 'Login';
        toggleButton = 'Registrar-se';
      } else {
        titulo = 'Crie sua conta';
        actionButton = 'Registrar';
        toggleButton = 'Voltar ao login';
      }
    });
  }

  login() async {
    try {
      await context.read<AuthService>().login(email.text, senha.text);
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  registrar() async {
    try {
      await context
          .read<AuthService>()
          .registrar(email.text, senha.text, user.text);
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.5,
                  ),
                ),
                if (islogin != true)
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: TextFormField(
                      controller: user,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Digite seu nome completo';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: "Nome completo",
                        labelStyle: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe o email correto!';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: TextFormField(
                    controller: senha,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Informe a senha correta!';
                      } else if (value.length < 6) {
                        return 'Sua senha deve ter no minimo 6 digitos!';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueceu sua senha?',
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (islogin) {
                        login();
                      } else {
                        registrar();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      textStyle: const TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        actionButton,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: () => setFormAction(!islogin),
                      child: Text(
                        toggleButton,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
