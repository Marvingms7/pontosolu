import 'package:cloud_firestore/cloud_firestore.dart';

class DBFirestore {
  DBFirestore();
  static final DBFirestore _instance = DBFirestore();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static FirebaseFirestore get() {
    return DBFirestore._instance._firestore;
  }
}
