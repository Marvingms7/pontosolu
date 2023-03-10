import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool isLoading = true;

  AuthService() {
    _authCheck();
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  _getUser() {
    usuario = _auth.currentUser;
    notifyListeners();
  }

  registrar(String email, String senha, String name) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: senha);
      FirebaseFirestore.instance
          .collection('Usuarios')
          .doc(usuario?.uid)
          .set({'nome': name});
      _getUser();
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        throw AuthException('A senha é muito fraca');
      } else if (e.code == 'email-already-in-use') {
        throw AuthException('Este email já está cadastrado');
      }
    }
  }

  login(String email, String senha) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: senha);
      _getUser();
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException('email não encontrado. Registre-se.');
      } else if (e.code == 'wrong-password') {
        throw AuthException('Senha Incorreta. Tente novamente');
      }
    }
  }

  logout() async {
    await _auth.signOut();
    _getUser();
  }
}
